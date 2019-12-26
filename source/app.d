import core.sys.windows.windows;
import std.stdio;
import std.conv;
import std.getopt;
import std.experimental.logger;
import core.runtime;
import renderer;
import imgui;

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

class FpsClock(int Target, int MarginMsecs = 5)
{
    import std.datetime.systime : SysTime, Clock;
    import core.time : Duration, dur;

    SysTime m_lastTime;

    static immutable Duration frameDuration = dur!"msecs"(1000 / Target - MarginMsecs);

    this()
    {
        m_lastTime = Clock.currTime;
    }

    // loopの頭に呼ぶ
    SysTime newFrame()
    {
        immutable now = Clock.currTime;
        // auto duration = now - m_lastTime;
        m_lastTime = now;
        return now;
    }

    // loopの終わりで呼んで早すぎる場合にはsleepして待つ
    void waitNextFrame()
    {
        import core.thread.osthread : Thread;

        immutable now = Clock.currTime;
        immutable delta = now - m_lastTime;
        if (delta < frameDuration)
        {
            auto wait = frameDuration - delta;
            Thread.sleep(wait);
        }
    }
}

extern (Windows) int WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, // @suppress(dscanner.suspicious.unused_parameter)
        LPSTR lpCmdLine, int nCmdShow) // @suppress(dscanner.suspicious.unused_parameter)
        {
    // initilize stdout
    Runtime.initialize;

    log(to!string(lpCmdLine));
    auto cmdline = to!wstring(GetCommandLine());
    log(cmdline);

    int argc = 0;
    wstring[] args;
    auto p = CommandLineToArgvW(cmdline.ptr, &argc);
    for (int i = 0; i < argc; ++i)
    {
        args ~= to!wstring(p[i]);
    }

    auto renderer = new Renderer();
    scope (exit)
        destroy(renderer);
    if (args.length > 1)
    {
        renderer.load(args[1]);
    }
    else
    {
        renderer.createTriangle();
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

    if (!renderer.initialize(hwnd))
    {
        return 3;
    }

    // Setup Dear ImGui context
    // IMGUI_CHECKVERSION();
    CreateContext();
    auto io = imgui.GetIO();

    auto fps = new FpsClock!(30);
    MSG Msg;
    while (GetMessage(&Msg, NULL, 0, 0))
    {
        auto now = fps.newFrame();

        TranslateMessage(&Msg);
        DispatchMessage(&Msg);

        renderer.draw(now);
        fps.waitNextFrame();
    }

    return cast(int) Msg.wParam;
}
