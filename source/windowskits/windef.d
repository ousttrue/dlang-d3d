module windowskits.windef;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.winnt;
struct tagRECT
{
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
}
struct tagSIZE
{
    LONG cx;
    LONG cy;
}
struct HMONITOR__
{
    int unused;
}
struct HWND__
{
    int unused;
}
struct HDC__
{
    int unused;
}
