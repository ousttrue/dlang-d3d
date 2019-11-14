module windowskits.dxgitype;
import windowskits.minwindef;
import core.sys.windows.windef;
import windowskits.dxgicommon;
import windowskits.dxgiformat;
enum DXGI_MODE_ROTATION
{
    DXGI_MODE_ROTATION_UNSPECIFIED = 0x0,
    DXGI_MODE_ROTATION_IDENTITY = 0x1,
    DXGI_MODE_ROTATION_ROTATE90 = 0x2,
    DXGI_MODE_ROTATION_ROTATE180 = 0x3,
    DXGI_MODE_ROTATION_ROTATE270 = 0x4,
}
struct DXGI_MODE_DESC
{
    UINT Width;
    UINT Height;
    DXGI_RATIONAL RefreshRate;
    DXGI_FORMAT Format;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
}
enum DXGI_MODE_SCANLINE_ORDER
{
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0x0,
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE = 0x1,
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 0x2,
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 0x3,
}
enum DXGI_MODE_SCALING
{
    DXGI_MODE_SCALING_UNSPECIFIED = 0x0,
    DXGI_MODE_SCALING_CENTERED = 0x1,
    DXGI_MODE_SCALING_STRETCHED = 0x2,
}
struct DXGI_GAMMA_CONTROL_CAPABILITIES
{
    BOOL ScaleAndOffsetSupported;
    float MaxConvertedValue;
    float MinConvertedValue;
    UINT NumGammaControlPoints;
    float[1025] ControlPointPositions;
}
struct DXGI_GAMMA_CONTROL
{
    DXGI_RGB Scale;
    DXGI_RGB Offset;
    DXGI_RGB[1025] GammaCurve;
}
struct DXGI_RGB
{
    float Red;
    float Green;
    float Blue;
}
