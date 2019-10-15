// cpptypeinfo generated
module windowskits.dxgitype;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.dxgicommon;
import windowskits.dxgiformat;


enum DXGI_MODE_SCANLINE_ORDER {
    UNSPECIFIED = 0x00000000,
    PROGRESSIVE = 0x00000001,
    UPPER_FIELD_FIRST = 0x00000002,
    LOWER_FIELD_FIRST = 0x00000003,
}

enum DXGI_MODE_SCALING {
    UNSPECIFIED = 0x00000000,
    CENTERED = 0x00000001,
    STRETCHED = 0x00000002,
}

enum DXGI_MODE_ROTATION {
    UNSPECIFIED = 0x00000000,
    IDENTITY = 0x00000001,
    ROTATE90 = 0x00000002,
    ROTATE180 = 0x00000003,
    ROTATE270 = 0x00000004,
}

struct DXGI_MODE_DESC{
    uint Width;
    uint Height;
    DXGI_RATIONAL RefreshRate;
    DXGI_FORMAT Format;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
}

struct DXGI_GAMMA_CONTROL_CAPABILITIES{
    int ScaleAndOffsetSupported;
    float MaxConvertedValue;
    float MinConvertedValue;
    uint NumGammaControlPoints;
    float* ControlPointPositions;
}

struct DXGI_GAMMA_CONTROL{
    DXGI_RGB Scale;
    DXGI_RGB Offset;
    DXGI_RGB* GammaCurve;
}

struct DXGI_RGB{
    float Red;
    float Green;
    float Blue;
}

struct _D3DCOLORVALUE{
    float r;
    float g;
    float b;
    float a;
}

