// cpptypeinfo generated: 2019-10-10 20:57:09.624291
module windowskits.wingdi;

import core.sys.windows.windef;
import core.sys.windows.com;

struct tagLOGPALETTE{
    ushort palVersion;
    ushort palNumEntries;
    tagPALETTEENTRY* palPalEntry;
}

struct tagPALETTEENTRY{
    ubyte peRed;
    ubyte peGreen;
    ubyte peBlue;
    ubyte peFlags;
}

