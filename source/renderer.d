module renderer;
import core.sys.windows.windows;
import windowskits;
import std.stdio;
import std.datetime.systime;
import std.file;
import glb;
import std.json;
import std.conv;

class Renderer
{
    IDXGISwapChain m_swapchain;
    ID3D11Device m_device;
    ID3D11DeviceContext m_context;

    ID3D11RenderTargetView m_rtv;

    ~this()
    {
        if (m_rtv)
        {
            m_rtv.Release();
            m_rtv = null;
        }

        m_swapchain.Release();
        m_context.Release();
        m_device.Release();
    }

    bool initialize(HWND hwnd)
    {
        auto dtype = D3D_DRIVER_TYPE.D3D_DRIVER_TYPE_HARDWARE;
        UINT flags = 0;
        auto featureLevels = [
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_11_0,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_1,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_0,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_3,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_2,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_1,
        ];

        //UINT numFeatureLevels = sizeof(featureLevels) / sizeof(D3D_FEATURE_LEVEL);
        auto sdkVersion = D3D11_SDK_VERSION;
        D3D_FEATURE_LEVEL validFeatureLevel;

        DXGI_SWAP_CHAIN_DESC scDesc;
        scDesc.BufferCount = 1;
        scDesc.BufferDesc.Width = 0;
        scDesc.BufferDesc.Height = 0;
        scDesc.BufferDesc.Format = DXGI_FORMAT.DXGI_FORMAT_R8G8B8A8_UNORM_SRGB;
        scDesc.BufferDesc.RefreshRate.Numerator = 60;
        scDesc.BufferDesc.RefreshRate.Denominator = 1;
        scDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
        scDesc.OutputWindow = hwnd;
        scDesc.SampleDesc.Count = 1;
        scDesc.SampleDesc.Quality = 0;
        scDesc.Windowed = TRUE;

        HRESULT hr = D3D11CreateDeviceAndSwapChain(null, dtype, null, flags, featureLevels.ptr,
                cast(uint) featureLevels.length, sdkVersion, &scDesc,
                &m_swapchain, &m_device, &validFeatureLevel, &m_context);
        return hr == S_OK;
    }

    void load(wstring path)
    {
        writefln("load: %s", path);
        auto bytes = read(path);

        auto glb = Glb.parse(cast(ubyte[]) bytes);
        if (!glb.json || !glb.bin)
        {
            throw new Exception("fail to Glb.parse");
        }

        auto json_str = (cast(immutable char*) glb.json.ptr)[0 .. glb.json.length];
        auto json = parseJSON(json_str).object;
        // writefln("%s", json.type);
        writefln("%s", json["asset"].object["generator"]);
    }

    void draw(SysTime now)
    {
        if (!m_rtv)
        {
            ID3D11Texture2D backbuffer;
            auto hr = m_swapchain.GetBuffer(0, &backbuffer.iidof, cast(void**)&backbuffer);
            if (hr != S_OK)
            {
                throw new Exception("fail to GetBuffer");
            }
            scope (exit)
                backbuffer.Release();

            hr = m_device.CreateRenderTargetView(backbuffer, null, &m_rtv);
            if (hr != S_OK)
            {
                throw new Exception("fail to CreateRenderTargetView");
            }
        }
        float[4] clearColor = [0.0f, 0.0f, 1.0f, 0.0f];
        m_context.ClearRenderTargetView(m_rtv, clearColor);

        // context.Flush();

        m_swapchain.Present(0, 0);
    }
}
