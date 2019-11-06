module windowskits.winnt;
import windowskits.minwindef;
import core.sys.windows.windef;
alias HANDLE = void*;
struct _LARGE_INTEGER
{
   // anonymous u;
   LONGLONG QuadPart;
}
// struct nameless
struct _LUID
{
   DWORD LowPart;
   LONG HighPart;
}
