// cpptypeinfo generated: 2019-10-10 20:57:09.602722
module windowskits.ntdef;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;

struct _LIST_ENTRY{
    _LIST_ENTRY* Flink;
    _LIST_ENTRY* Blink;
}

struct _SINGLE_LIST_ENTRY{
    _SINGLE_LIST_ENTRY* Next;
}

struct _RTL_BALANCED_NODE{
    union {
_RTL_BALANCED_NODE** Children;
} ;
    union {
ubyte Red;
ubyte Balance;
ulong ParentValue;
} ;
}

struct _UNICODE_STRING{
    ushort Length;
    ushort MaximumLength;
    ushort* Buffer;
}

