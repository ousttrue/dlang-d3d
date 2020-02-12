// This source code was generated by regenerator
module windowskits.dxgitype;
import windowskits.minwindef;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.dxgicommon;
import windowskits.dxgiformat;
enum DXGI_MODE_ROTATION
{
    _UNSPECIFIED = 0x0,
    _IDENTITY = 0x1,
    _ROTATE90 = 0x2,
    _ROTATE180 = 0x3,
    _ROTATE270 = 0x4,
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
    _UNSPECIFIED = 0x0,
    _PROGRESSIVE = 0x1,
    _UPPER_FIELD_FIRST = 0x2,
    _LOWER_FIELD_FIRST = 0x3,
}
enum DXGI_MODE_SCALING
{
    _UNSPECIFIED = 0x0,
    _CENTERED = 0x1,
    _STRETCHED = 0x2,
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
alias DXGI_RGBA = D3DCOLORVALUE;
alias D3DCOLORVALUE = _D3DCOLORVALUE;
struct _D3DCOLORVALUE
{
    float r;
    float g;
    float b;
    float a;
}
struct DXGI_JPEG_AC_HUFFMAN_TABLE
{
    BYTE[16] CodeCounts;
    BYTE[162] CodeValues;
}
struct DXGI_JPEG_DC_HUFFMAN_TABLE
{
    BYTE[12] CodeCounts;
    BYTE[12] CodeValues;
}
struct DXGI_JPEG_QUANTIZATION_TABLE
{
    BYTE[64] Elements;
}