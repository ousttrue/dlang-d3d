import core.sys.windows.windows;
import windowskits;
import std.stdio;
import std.conv;
import std.getopt;
import core.runtime;

wstring g_className = "SAMPLE_CLASS_NAME";
wstring g_windowName = "Window Title";

extern (Windows) LRESULT WndProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam) nothrow
{
    switch (msg)
    {
    case WM_DESTROY:
        PostQuitMessage(0);
        return 0;

    default:
        break;
    }

    return DefWindowProc(hwnd, msg, wParam, lParam);
}

class Renderer
{
    void load(wstring path)
    {
        writeln(path);
    }
}

extern (Windows) int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, // @suppress(dscanner.suspicious.unused_parameter)
        LPSTR lpCmdLine, int nCmdShow) // @suppress(dscanner.suspicious.unused_parameter)
        {
    // initilize stdout
    Runtime.initialize;

    writeln(to!string(lpCmdLine));
    auto cmdline = to!wstring(GetCommandLine());
    writeln(cmdline);

    int argc = 0;
    wstring[] args;
    auto p = CommandLineToArgvW(cmdline.ptr, &argc);
    for (int i = 0; i < argc; ++i)
    {
        args ~= to!wstring(p[i]);
    }

    auto renderer = new Renderer();
    if (args.length > 1)
    {
        renderer.load(args[1]);
    }

    WNDCLASSEX wc;
    wc.cbSize = WNDCLASSEX.sizeof;
    wc.style = 0;
    wc.lpfnWndProc = &WndProc;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = 0;
    wc.hInstance = hInstance;
    wc.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground = cast(HBRUSH)(COLOR_WINDOW + 1);
    wc.lpszMenuName = NULL;
    wc.lpszClassName = g_className.ptr;
    wc.hIconSm = LoadIcon(NULL, IDI_APPLICATION);
    if (!RegisterClassEx(&wc))
    {
        MessageBox(NULL, "fail to RegisterClassEx", "Error", MB_ICONEXCLAMATION | MB_OK);
        return 1;
    }

    auto hwnd = CreateWindowEx(WS_EX_CLIENTEDGE, g_className.ptr, g_windowName.ptr,
            WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT, 240, 120, NULL,
            NULL, hInstance, NULL);
    if (hwnd == NULL)
    {
        MessageBox(NULL, "fail to CreateWindowEx", "Error", MB_ICONEXCLAMATION | MB_OK);
        return 2;
    }

    ShowWindow(hwnd, nCmdShow);
    UpdateWindow(hwnd);

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

    IDXGISwapChain swapchain;
    ID3D11Device device;
    ID3D11DeviceContext context;
    HRESULT hr = D3D11CreateDeviceAndSwapChain(null, dtype, null, flags, featureLevels.ptr,
            cast(uint) featureLevels.length, sdkVersion, &scDesc, &swapchain,
            &device, &validFeatureLevel, &context);
    if (hr != S_OK)
    {
        return 3;
    }

    ID3D11RenderTargetView rtv;

    MSG Msg;
    while (GetMessage(&Msg, NULL, 0, 0))
    {
        TranslateMessage(&Msg);
        DispatchMessage(&Msg);

        if (!rtv)
        {
            ID3D11Texture2D backbuffer;
            hr = swapchain.GetBuffer(0, &backbuffer.iidof, cast(void**)&backbuffer);
            if (hr != S_OK)
            {
                throw new Exception("fail to GetBuffer");
            }
            scope (exit)
                backbuffer.Release();

            hr = device.CreateRenderTargetView(backbuffer, null, &rtv);
            if (hr != S_OK)
            {
                throw new Exception("fail to CreateRenderTargetView");
            }
        }
        float[4] clearColor = [0.0f, 0.0f, 1.0f, 0.0f];
        context.ClearRenderTargetView(rtv, clearColor);

        // context.Flush();

        swapchain.Present(0, 0);
    }

    swapchain.Release();

    return cast(int) Msg.wParam;
}
