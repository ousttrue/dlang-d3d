// cpptypeinfo generated
module windowskits.dcommon;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.dxgi;
import windowskits.dxgiformat;


enum DWRITE_MEASURING_MODE {
    NATURAL = 0x00000000,
    GDI_CLASSIC = 0x00000001,
    GDI_NATURAL = 0x00000002,
}

enum DWRITE_GLYPH_IMAGE_FORMATS {
    NONE = 0x00000000,
    TRUETYPE = 0x00000001,
    CFF = 0x00000002,
    COLR = 0x00000004,
    SVG = 0x00000008,
    PNG = 0x00000010,
    JPEG = 0x00000020,
    TIFF = 0x00000040,
    PREMULTIPLIED_B8G8R8A8 = 0x00000080,
}

enum D2D1_ALPHA_MODE {
    UNKNOWN = 0x00000000,
    PREMULTIPLIED = 0x00000001,
    STRAIGHT = 0x00000002,
    IGNORE = 0x00000003,
    FORCE_DWORD = -0x0000001,
}

// dcommon.h: 30
interface IDXGISurface: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0xcafcb56c, 0x6ac3, 0x4889, [0xbf, 0x47, 0x9e, 0x23, 0xbb, 0xd2, 0x60, 0xec]);
    extern(C) int GetDesc(DXGI_SURFACE_DESC* pDesc);
    extern(C) int Map(DXGI_MAPPED_RECT* pLockedRect, uint MapFlags);
    extern(C) int Unmap();
}

