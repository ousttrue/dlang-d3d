// cpptypeinfo generated: 2019-10-10 20:57:09.614700
module windowskits.wtypesbase;

import core.sys.windows.windef;
import core.sys.windows.com;

struct _DWORD_BLOB{
    uint clSize;
    uint* alData;
}

struct _FLAGGED_BYTE_BLOB{
    uint fFlags;
    uint clSize;
    ubyte* abData;
}

struct _BYTE_BLOB{
    uint clSize;
    ubyte* abData;
}

