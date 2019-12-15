module renderer;
import core.sys.windows.windows;
import std.stdio;
import std.experimental.logger;
import std.datetime.systime;
import std.file;
import std.json;
import std.conv;
import windowskits;
import glb;
import gltf;
import gltfhelper;
import dvecmath;
import d3d11.shader;
import d3d11.vertexbuffer;
import d3d11.dxgihelper;

string SHADER_SRC = import("simple.hlsl");

class Mesh
{
    string Name;

    const(float3)[] Positions;
    const(float3)[] Normals;
    const(float2)[] UVs;

    const(int)[] Indices;

    this(string name)
    {
        Name = name;
    }
}

VertexBuffer createVertexBuffer(ID3D11Device device,
        D3D11_INPUT_ELEMENT_DESC[] inputs, const Mesh drawable)
{
    auto stride = 0;
    foreach (input; inputs)
    {
        stride += input.Format.byteLength;
    }

    ubyte[] bytes;
    bytes.length = drawable.Positions.length * stride;
    foreach (input; inputs)
    {
    }

    auto vb = new VertexBuffer();
    if (!vb.setVertices(device, bytes, stride))
    {
        return null;
    }

    if (!vb.setIndices(device, cast(ubyte[]) drawable.Indices, cast(uint) drawable.Indices.length))
    {
        return null;
    }

    return vb;
}

class Renderer
{
    IDXGISwapChain m_swapchain;
    ID3D11Device m_device;
    ID3D11DeviceContext m_context;

    ID3D11RenderTargetView m_rtv;

    Shader m_shader;
    VertexBuffer[Mesh] m_vertexBuffers;

    Mesh[] m_meshes;

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
        auto dtype = D3D_DRIVER_TYPE._HARDWARE;
        UINT flags = 0;
        auto featureLevels = [
            D3D_FEATURE_LEVEL._11_0, D3D_FEATURE_LEVEL._10_1,
            D3D_FEATURE_LEVEL._10_0, D3D_FEATURE_LEVEL._9_3,
            D3D_FEATURE_LEVEL._9_2, D3D_FEATURE_LEVEL._9_1,
        ];

        //UINT numFeatureLevels = sizeof(featureLevels) / sizeof(D3D_FEATURE_LEVEL);
        auto sdkVersion = D3D11_SDK_VERSION;
        D3D_FEATURE_LEVEL validFeatureLevel;

        DXGI_SWAP_CHAIN_DESC scDesc;
        scDesc.BufferCount = 1;
        scDesc.BufferDesc.Width = 0;
        scDesc.BufferDesc.Height = 0;
        scDesc.BufferDesc.Format = DXGI_FORMAT._R8G8B8A8_UNORM_SRGB;
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

        m_shader = new Shader();
        if (!m_shader.createVS(m_device, SHADER_SRC, "VSMain"))
        {
            return false;
        }
        if (!m_shader.createPS(m_device, SHADER_SRC, "PSMain"))
        {
            return false;
        }

        return hr == S_OK;
    }

    void createTriangle()
    {
        auto mesh = new Mesh("triangle");
        mesh.Positions = [
            float3(-1, -1, 0), float3(1, -1, 0), float3(0, 1, 0),
        ];
        // mesh.Indices = [0, 1, 2];
        mesh.Indices = [2, 1, 0];

        m_meshes ~= mesh;
    }

    void load(wstring path)
    {
        logf("load: %s", path);
        const bytes = read(path);

        const glb = Glb.parse(cast(ubyte[]) bytes);
        if (!glb.json || !glb.bin)
        {
            throw new Exception("fail to Glb.parse");
        }

        const json_str = (cast(immutable char*) glb.json.ptr)[0 .. glb.json.length];
        const json = parseJSON(json_str);
        glTF parsed = glTF.fromJSON(json);
        logf("%s", json["asset"].object["generator"]);

        foreach (mesh; parsed.meshes)
        {
            auto d = new Mesh(mesh.name);
            foreach (prim; mesh.primitives)
            {
                const positions = get_bytes(&parsed, glb.bin, "POSITION" in prim.attributes)
                    .range_cast!float3;
                d.Positions = positions;

                const normals = get_bytes(&parsed, glb.bin, "NORMAL" in prim.attributes)
                    .range_cast!float3;
                if (normals.length)
                {
                    d.Normals = normals;
                }

                const uvs = get_bytes(&parsed, glb.bin, "TEXCOORD_0" in prim.attributes)
                    .range_cast!float2;
                if (uvs.length)
                {
                    d.UVs = uvs;
                }

                auto indices = get_indices(&parsed, glb.bin, prim.indices.get);
                if (indices)
                {
                    d.Indices = indices;
                }
            }
            m_meshes ~= d;
        }
    }

    VertexBuffer getOrCreateVertexBuffer(Mesh mesh)
    {
        if (m_shader.inputs.length == 0)
        {
            // return null;
        }

        auto p = mesh in m_vertexBuffers;
        if (p)
        {
            return *p;
        }

        int stride;
        foreach (input; m_shader.inputs)
        {
            // stride += input;
            auto a = 0;
        }

        auto vb = new VertexBuffer();
        if (!vb.setVertices(m_device, cast(ubyte[]) mesh.Positions,
                cast(uint) mesh.Positions.length))
        {
            return null;
        }

        if (!vb.setIndices(m_device, cast(ubyte[]) mesh.Indices, cast(uint) mesh.Indices.length))
        {
            return null;
        }
        m_vertexBuffers[mesh] = vb;
        return vb;
    }

    D3D11_TEXTURE2D_DESC m_backbufferDesc;
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
            backbuffer.GetDesc(&m_backbufferDesc);

            hr = m_device.CreateRenderTargetView(backbuffer, null, &m_rtv);
            if (hr != S_OK)
            {
                throw new Exception("fail to CreateRenderTargetView");
            }
        }
        float[4] clearColor = [0.0f, 0.0f, 1.0f, 0.0f];
        m_context.ClearRenderTargetView(m_rtv, clearColor);

        // Outputmarge stage
        m_context.OMSetRenderTargets(1, &m_rtv, null);

        // Rasterizer stage
        D3D11_VIEWPORT vp;
        vp.Width = cast(float) m_backbufferDesc.Width;
        vp.Height = cast(float) m_backbufferDesc.Height;
        vp.MinDepth = 0.0f;
        vp.MaxDepth = 1.0f;
        vp.TopLeftX = 0;
        vp.TopLeftY = 0;
        m_context.RSSetViewports(1, &vp);

        m_shader.setup(m_context);
        foreach (mesh; m_meshes)
        {
            auto vb = getOrCreateVertexBuffer(mesh);
            if (vb)
            {
                vb.draw(m_context);
            }
        }

        // m_context.Flush();

        m_swapchain.Present(0, 0);
    }
}
