// This source code was generated by regenerator
module windowskits.wtypesbase;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.winnt;
import windowskits.minwindef;
alias DOUBLE = double;
alias SCODE = LONG;
alias OLECHAR = WCHAR;
alias BLOB = tagBLOB;
struct tagBLOB
{
    ULONG cbSize;
    BYTE* pBlobData;
}
alias LPOLESTR = OLECHAR*;
alias LPCOLESTR = const(OLECHAR)*;
