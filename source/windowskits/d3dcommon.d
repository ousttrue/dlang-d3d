// This source code was generated by dclangen
module windowskits.d3dcommon;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.basetsd;
import windowskits.winnt;
enum D3D_SRV_DIMENSION
{
    _UNKNOWN = 0x0,
    _BUFFER = 0x1,
    _TEXTURE1D = 0x2,
    _TEXTURE1DARRAY = 0x3,
    _TEXTURE2D = 0x4,
    _TEXTURE2DARRAY = 0x5,
    _TEXTURE2DMS = 0x6,
    _TEXTURE2DMSARRAY = 0x7,
    _TEXTURE3D = 0x8,
    _TEXTURECUBE = 0x9,
    _TEXTURECUBEARRAY = 0xa,
    _BUFFEREX = 0xb,
    D3D10_SRV_DIMENSION_UNKNOWN = 0x0,
    D3D10_SRV_DIMENSION_BUFFER = 0x1,
    D3D10_SRV_DIMENSION_TEXTURE1D = 0x2,
    D3D10_SRV_DIMENSION_TEXTURE1DARRAY = 0x3,
    D3D10_SRV_DIMENSION_TEXTURE2D = 0x4,
    D3D10_SRV_DIMENSION_TEXTURE2DARRAY = 0x5,
    D3D10_SRV_DIMENSION_TEXTURE2DMS = 0x6,
    D3D10_SRV_DIMENSION_TEXTURE2DMSARRAY = 0x7,
    D3D10_SRV_DIMENSION_TEXTURE3D = 0x8,
    D3D10_SRV_DIMENSION_TEXTURECUBE = 0x9,
    D3D10_1_SRV_DIMENSION_UNKNOWN = 0x0,
    D3D10_1_SRV_DIMENSION_BUFFER = 0x1,
    D3D10_1_SRV_DIMENSION_TEXTURE1D = 0x2,
    D3D10_1_SRV_DIMENSION_TEXTURE1DARRAY = 0x3,
    D3D10_1_SRV_DIMENSION_TEXTURE2D = 0x4,
    D3D10_1_SRV_DIMENSION_TEXTURE2DARRAY = 0x5,
    D3D10_1_SRV_DIMENSION_TEXTURE2DMS = 0x6,
    D3D10_1_SRV_DIMENSION_TEXTURE2DMSARRAY = 0x7,
    D3D10_1_SRV_DIMENSION_TEXTURE3D = 0x8,
    D3D10_1_SRV_DIMENSION_TEXTURECUBE = 0x9,
    D3D10_1_SRV_DIMENSION_TEXTURECUBEARRAY = 0xa,
    D3D11_SRV_DIMENSION_UNKNOWN = 0x0,
    D3D11_SRV_DIMENSION_BUFFER = 0x1,
    D3D11_SRV_DIMENSION_TEXTURE1D = 0x2,
    D3D11_SRV_DIMENSION_TEXTURE1DARRAY = 0x3,
    D3D11_SRV_DIMENSION_TEXTURE2D = 0x4,
    D3D11_SRV_DIMENSION_TEXTURE2DARRAY = 0x5,
    D3D11_SRV_DIMENSION_TEXTURE2DMS = 0x6,
    D3D11_SRV_DIMENSION_TEXTURE2DMSARRAY = 0x7,
    D3D11_SRV_DIMENSION_TEXTURE3D = 0x8,
    D3D11_SRV_DIMENSION_TEXTURECUBE = 0x9,
    D3D11_SRV_DIMENSION_TEXTURECUBEARRAY = 0xa,
    D3D11_SRV_DIMENSION_BUFFEREX = 0xb,
}
enum D3D_PRIMITIVE_TOPOLOGY
{
    _UNDEFINED = 0x0,
    _POINTLIST = 0x1,
    _LINELIST = 0x2,
    _LINESTRIP = 0x3,
    _TRIANGLELIST = 0x4,
    _TRIANGLESTRIP = 0x5,
    _LINELIST_ADJ = 0xa,
    _LINESTRIP_ADJ = 0xb,
    _TRIANGLELIST_ADJ = 0xc,
    _TRIANGLESTRIP_ADJ = 0xd,
    _1_CONTROL_POINT_PATCHLIST = 0x21,
    _2_CONTROL_POINT_PATCHLIST = 0x22,
    _3_CONTROL_POINT_PATCHLIST = 0x23,
    _4_CONTROL_POINT_PATCHLIST = 0x24,
    _5_CONTROL_POINT_PATCHLIST = 0x25,
    _6_CONTROL_POINT_PATCHLIST = 0x26,
    _7_CONTROL_POINT_PATCHLIST = 0x27,
    _8_CONTROL_POINT_PATCHLIST = 0x28,
    _9_CONTROL_POINT_PATCHLIST = 0x29,
    _10_CONTROL_POINT_PATCHLIST = 0x2a,
    _11_CONTROL_POINT_PATCHLIST = 0x2b,
    _12_CONTROL_POINT_PATCHLIST = 0x2c,
    _13_CONTROL_POINT_PATCHLIST = 0x2d,
    _14_CONTROL_POINT_PATCHLIST = 0x2e,
    _15_CONTROL_POINT_PATCHLIST = 0x2f,
    _16_CONTROL_POINT_PATCHLIST = 0x30,
    _17_CONTROL_POINT_PATCHLIST = 0x31,
    _18_CONTROL_POINT_PATCHLIST = 0x32,
    _19_CONTROL_POINT_PATCHLIST = 0x33,
    _20_CONTROL_POINT_PATCHLIST = 0x34,
    _21_CONTROL_POINT_PATCHLIST = 0x35,
    _22_CONTROL_POINT_PATCHLIST = 0x36,
    _23_CONTROL_POINT_PATCHLIST = 0x37,
    _24_CONTROL_POINT_PATCHLIST = 0x38,
    _25_CONTROL_POINT_PATCHLIST = 0x39,
    _26_CONTROL_POINT_PATCHLIST = 0x3a,
    _27_CONTROL_POINT_PATCHLIST = 0x3b,
    _28_CONTROL_POINT_PATCHLIST = 0x3c,
    _29_CONTROL_POINT_PATCHLIST = 0x3d,
    _30_CONTROL_POINT_PATCHLIST = 0x3e,
    _31_CONTROL_POINT_PATCHLIST = 0x3f,
    _32_CONTROL_POINT_PATCHLIST = 0x40,
    D3D10_PRIMITIVE_TOPOLOGY_UNDEFINED = 0x0,
    D3D10_PRIMITIVE_TOPOLOGY_POINTLIST = 0x1,
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST = 0x2,
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP = 0x3,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 0x4,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 0x5,
    D3D10_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 0xa,
    D3D10_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 0xb,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 0xc,
    D3D10_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 0xd,
    D3D11_PRIMITIVE_TOPOLOGY_UNDEFINED = 0x0,
    D3D11_PRIMITIVE_TOPOLOGY_POINTLIST = 0x1,
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST = 0x2,
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP = 0x3,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST = 0x4,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP = 0x5,
    D3D11_PRIMITIVE_TOPOLOGY_LINELIST_ADJ = 0xa,
    D3D11_PRIMITIVE_TOPOLOGY_LINESTRIP_ADJ = 0xb,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST_ADJ = 0xc,
    D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP_ADJ = 0xd,
    D3D11_PRIMITIVE_TOPOLOGY_1_CONTROL_POINT_PATCHLIST = 0x21,
    D3D11_PRIMITIVE_TOPOLOGY_2_CONTROL_POINT_PATCHLIST = 0x22,
    D3D11_PRIMITIVE_TOPOLOGY_3_CONTROL_POINT_PATCHLIST = 0x23,
    D3D11_PRIMITIVE_TOPOLOGY_4_CONTROL_POINT_PATCHLIST = 0x24,
    D3D11_PRIMITIVE_TOPOLOGY_5_CONTROL_POINT_PATCHLIST = 0x25,
    D3D11_PRIMITIVE_TOPOLOGY_6_CONTROL_POINT_PATCHLIST = 0x26,
    D3D11_PRIMITIVE_TOPOLOGY_7_CONTROL_POINT_PATCHLIST = 0x27,
    D3D11_PRIMITIVE_TOPOLOGY_8_CONTROL_POINT_PATCHLIST = 0x28,
    D3D11_PRIMITIVE_TOPOLOGY_9_CONTROL_POINT_PATCHLIST = 0x29,
    D3D11_PRIMITIVE_TOPOLOGY_10_CONTROL_POINT_PATCHLIST = 0x2a,
    D3D11_PRIMITIVE_TOPOLOGY_11_CONTROL_POINT_PATCHLIST = 0x2b,
    D3D11_PRIMITIVE_TOPOLOGY_12_CONTROL_POINT_PATCHLIST = 0x2c,
    D3D11_PRIMITIVE_TOPOLOGY_13_CONTROL_POINT_PATCHLIST = 0x2d,
    D3D11_PRIMITIVE_TOPOLOGY_14_CONTROL_POINT_PATCHLIST = 0x2e,
    D3D11_PRIMITIVE_TOPOLOGY_15_CONTROL_POINT_PATCHLIST = 0x2f,
    D3D11_PRIMITIVE_TOPOLOGY_16_CONTROL_POINT_PATCHLIST = 0x30,
    D3D11_PRIMITIVE_TOPOLOGY_17_CONTROL_POINT_PATCHLIST = 0x31,
    D3D11_PRIMITIVE_TOPOLOGY_18_CONTROL_POINT_PATCHLIST = 0x32,
    D3D11_PRIMITIVE_TOPOLOGY_19_CONTROL_POINT_PATCHLIST = 0x33,
    D3D11_PRIMITIVE_TOPOLOGY_20_CONTROL_POINT_PATCHLIST = 0x34,
    D3D11_PRIMITIVE_TOPOLOGY_21_CONTROL_POINT_PATCHLIST = 0x35,
    D3D11_PRIMITIVE_TOPOLOGY_22_CONTROL_POINT_PATCHLIST = 0x36,
    D3D11_PRIMITIVE_TOPOLOGY_23_CONTROL_POINT_PATCHLIST = 0x37,
    D3D11_PRIMITIVE_TOPOLOGY_24_CONTROL_POINT_PATCHLIST = 0x38,
    D3D11_PRIMITIVE_TOPOLOGY_25_CONTROL_POINT_PATCHLIST = 0x39,
    D3D11_PRIMITIVE_TOPOLOGY_26_CONTROL_POINT_PATCHLIST = 0x3a,
    D3D11_PRIMITIVE_TOPOLOGY_27_CONTROL_POINT_PATCHLIST = 0x3b,
    D3D11_PRIMITIVE_TOPOLOGY_28_CONTROL_POINT_PATCHLIST = 0x3c,
    D3D11_PRIMITIVE_TOPOLOGY_29_CONTROL_POINT_PATCHLIST = 0x3d,
    D3D11_PRIMITIVE_TOPOLOGY_30_CONTROL_POINT_PATCHLIST = 0x3e,
    D3D11_PRIMITIVE_TOPOLOGY_31_CONTROL_POINT_PATCHLIST = 0x3f,
    D3D11_PRIMITIVE_TOPOLOGY_32_CONTROL_POINT_PATCHLIST = 0x40,
}
enum D3D_FEATURE_LEVEL
{
    _9_1 = 0x9100,
    _9_2 = 0x9200,
    _9_3 = 0x9300,
    _10_0 = 0xa000,
    _10_1 = 0xa100,
    _11_0 = 0xb000,
    _11_1 = 0xb100,
    _12_0 = 0xc000,
    _12_1 = 0xc100,
}
enum D3D_PRIMITIVE
{
    _PRIMITIVE_UNDEFINED = 0x0,
    _PRIMITIVE_POINT = 0x1,
    _PRIMITIVE_LINE = 0x2,
    _PRIMITIVE_TRIANGLE = 0x3,
    _PRIMITIVE_LINE_ADJ = 0x6,
    _PRIMITIVE_TRIANGLE_ADJ = 0x7,
    _PRIMITIVE_1_CONTROL_POINT_PATCH = 0x8,
    _PRIMITIVE_2_CONTROL_POINT_PATCH = 0x9,
    _PRIMITIVE_3_CONTROL_POINT_PATCH = 0xa,
    _PRIMITIVE_4_CONTROL_POINT_PATCH = 0xb,
    _PRIMITIVE_5_CONTROL_POINT_PATCH = 0xc,
    _PRIMITIVE_6_CONTROL_POINT_PATCH = 0xd,
    _PRIMITIVE_7_CONTROL_POINT_PATCH = 0xe,
    _PRIMITIVE_8_CONTROL_POINT_PATCH = 0xf,
    _PRIMITIVE_9_CONTROL_POINT_PATCH = 0x10,
    _PRIMITIVE_10_CONTROL_POINT_PATCH = 0x11,
    _PRIMITIVE_11_CONTROL_POINT_PATCH = 0x12,
    _PRIMITIVE_12_CONTROL_POINT_PATCH = 0x13,
    _PRIMITIVE_13_CONTROL_POINT_PATCH = 0x14,
    _PRIMITIVE_14_CONTROL_POINT_PATCH = 0x15,
    _PRIMITIVE_15_CONTROL_POINT_PATCH = 0x16,
    _PRIMITIVE_16_CONTROL_POINT_PATCH = 0x17,
    _PRIMITIVE_17_CONTROL_POINT_PATCH = 0x18,
    _PRIMITIVE_18_CONTROL_POINT_PATCH = 0x19,
    _PRIMITIVE_19_CONTROL_POINT_PATCH = 0x1a,
    _PRIMITIVE_20_CONTROL_POINT_PATCH = 0x1b,
    _PRIMITIVE_21_CONTROL_POINT_PATCH = 0x1c,
    _PRIMITIVE_22_CONTROL_POINT_PATCH = 0x1d,
    _PRIMITIVE_23_CONTROL_POINT_PATCH = 0x1e,
    _PRIMITIVE_24_CONTROL_POINT_PATCH = 0x1f,
    _PRIMITIVE_25_CONTROL_POINT_PATCH = 0x20,
    _PRIMITIVE_26_CONTROL_POINT_PATCH = 0x21,
    _PRIMITIVE_27_CONTROL_POINT_PATCH = 0x22,
    _PRIMITIVE_28_CONTROL_POINT_PATCH = 0x23,
    _PRIMITIVE_29_CONTROL_POINT_PATCH = 0x24,
    _PRIMITIVE_30_CONTROL_POINT_PATCH = 0x25,
    _PRIMITIVE_31_CONTROL_POINT_PATCH = 0x26,
    _PRIMITIVE_32_CONTROL_POINT_PATCH = 0x27,
    D3D10_PRIMITIVE_UNDEFINED = 0x0,
    D3D10_PRIMITIVE_POINT = 0x1,
    D3D10_PRIMITIVE_LINE = 0x2,
    D3D10_PRIMITIVE_TRIANGLE = 0x3,
    D3D10_PRIMITIVE_LINE_ADJ = 0x6,
    D3D10_PRIMITIVE_TRIANGLE_ADJ = 0x7,
    D3D11_PRIMITIVE_UNDEFINED = 0x0,
    D3D11_PRIMITIVE_POINT = 0x1,
    D3D11_PRIMITIVE_LINE = 0x2,
    D3D11_PRIMITIVE_TRIANGLE = 0x3,
    D3D11_PRIMITIVE_LINE_ADJ = 0x6,
    D3D11_PRIMITIVE_TRIANGLE_ADJ = 0x7,
    D3D11_PRIMITIVE_1_CONTROL_POINT_PATCH = 0x8,
    D3D11_PRIMITIVE_2_CONTROL_POINT_PATCH = 0x9,
    D3D11_PRIMITIVE_3_CONTROL_POINT_PATCH = 0xa,
    D3D11_PRIMITIVE_4_CONTROL_POINT_PATCH = 0xb,
    D3D11_PRIMITIVE_5_CONTROL_POINT_PATCH = 0xc,
    D3D11_PRIMITIVE_6_CONTROL_POINT_PATCH = 0xd,
    D3D11_PRIMITIVE_7_CONTROL_POINT_PATCH = 0xe,
    D3D11_PRIMITIVE_8_CONTROL_POINT_PATCH = 0xf,
    D3D11_PRIMITIVE_9_CONTROL_POINT_PATCH = 0x10,
    D3D11_PRIMITIVE_10_CONTROL_POINT_PATCH = 0x11,
    D3D11_PRIMITIVE_11_CONTROL_POINT_PATCH = 0x12,
    D3D11_PRIMITIVE_12_CONTROL_POINT_PATCH = 0x13,
    D3D11_PRIMITIVE_13_CONTROL_POINT_PATCH = 0x14,
    D3D11_PRIMITIVE_14_CONTROL_POINT_PATCH = 0x15,
    D3D11_PRIMITIVE_15_CONTROL_POINT_PATCH = 0x16,
    D3D11_PRIMITIVE_16_CONTROL_POINT_PATCH = 0x17,
    D3D11_PRIMITIVE_17_CONTROL_POINT_PATCH = 0x18,
    D3D11_PRIMITIVE_18_CONTROL_POINT_PATCH = 0x19,
    D3D11_PRIMITIVE_19_CONTROL_POINT_PATCH = 0x1a,
    D3D11_PRIMITIVE_20_CONTROL_POINT_PATCH = 0x1b,
    D3D11_PRIMITIVE_21_CONTROL_POINT_PATCH = 0x1c,
    D3D11_PRIMITIVE_22_CONTROL_POINT_PATCH = 0x1d,
    D3D11_PRIMITIVE_23_CONTROL_POINT_PATCH = 0x1e,
    D3D11_PRIMITIVE_24_CONTROL_POINT_PATCH = 0x1f,
    D3D11_PRIMITIVE_25_CONTROL_POINT_PATCH = 0x20,
    D3D11_PRIMITIVE_26_CONTROL_POINT_PATCH = 0x21,
    D3D11_PRIMITIVE_27_CONTROL_POINT_PATCH = 0x22,
    D3D11_PRIMITIVE_28_CONTROL_POINT_PATCH = 0x23,
    D3D11_PRIMITIVE_29_CONTROL_POINT_PATCH = 0x24,
    D3D11_PRIMITIVE_30_CONTROL_POINT_PATCH = 0x25,
    D3D11_PRIMITIVE_31_CONTROL_POINT_PATCH = 0x26,
    D3D11_PRIMITIVE_32_CONTROL_POINT_PATCH = 0x27,
}
enum D3D_DRIVER_TYPE
{
    _UNKNOWN = 0x0,
    _HARDWARE = 0x1,
    _REFERENCE = 0x2,
    _NULL = 0x3,
    _SOFTWARE = 0x4,
    _WARP = 0x5,
}
alias ID3DBlob = ID3D10Blob;
interface ID3D10Blob: IUnknown
{
    static const iidof = parseGUID("8ba5fb08-5195-40e2-ac58-0d989c3a0102");
    LPVOID GetBufferPointer();
    SIZE_T GetBufferSize();
}
alias D3D_SHADER_MACRO = _D3D_SHADER_MACRO;
struct _D3D_SHADER_MACRO
{
    LPCSTR Name;
    LPCSTR Definition;
}
interface ID3DInclude
{
    HRESULT Open(D3D_INCLUDE_TYPE IncludeType, LPCSTR pFileName, LPCVOID pParentData, LPCVOID* ppData, UINT* pBytes);
    HRESULT Close(LPCVOID pData);
}
alias D3D_INCLUDE_TYPE = _D3D_INCLUDE_TYPE;
enum _D3D_INCLUDE_TYPE
{
    D3D_INCLUDE_LOCAL = 0x0,
    D3D_INCLUDE_SYSTEM = 0x1,
    D3D10_INCLUDE_LOCAL = 0x0,
    D3D10_INCLUDE_SYSTEM = 0x1,
    D3D_INCLUDE_FORCE_DWORD = 0x7fffffff,
}
alias D3D_SHADER_VARIABLE_TYPE = _D3D_SHADER_VARIABLE_TYPE;
enum _D3D_SHADER_VARIABLE_TYPE
{
    _VOID = 0x0,
    _BOOL = 0x1,
    _INT = 0x2,
    _FLOAT = 0x3,
    _STRING = 0x4,
    _TEXTURE = 0x5,
    _TEXTURE1D = 0x6,
    _TEXTURE2D = 0x7,
    _TEXTURE3D = 0x8,
    _TEXTURECUBE = 0x9,
    _SAMPLER = 0xa,
    _SAMPLER1D = 0xb,
    _SAMPLER2D = 0xc,
    _SAMPLER3D = 0xd,
    _SAMPLERCUBE = 0xe,
    _PIXELSHADER = 0xf,
    _VERTEXSHADER = 0x10,
    _PIXELFRAGMENT = 0x11,
    _VERTEXFRAGMENT = 0x12,
    _UINT = 0x13,
    _UINT8 = 0x14,
    _GEOMETRYSHADER = 0x15,
    _RASTERIZER = 0x16,
    _DEPTHSTENCIL = 0x17,
    _BLEND = 0x18,
    _BUFFER = 0x19,
    _CBUFFER = 0x1a,
    _TBUFFER = 0x1b,
    _TEXTURE1DARRAY = 0x1c,
    _TEXTURE2DARRAY = 0x1d,
    _RENDERTARGETVIEW = 0x1e,
    _DEPTHSTENCILVIEW = 0x1f,
    _TEXTURE2DMS = 0x20,
    _TEXTURE2DMSARRAY = 0x21,
    _TEXTURECUBEARRAY = 0x22,
    _HULLSHADER = 0x23,
    _DOMAINSHADER = 0x24,
    _INTERFACE_POINTER = 0x25,
    _COMPUTESHADER = 0x26,
    _DOUBLE = 0x27,
    _RWTEXTURE1D = 0x28,
    _RWTEXTURE1DARRAY = 0x29,
    _RWTEXTURE2D = 0x2a,
    _RWTEXTURE2DARRAY = 0x2b,
    _RWTEXTURE3D = 0x2c,
    _RWBUFFER = 0x2d,
    _BYTEADDRESS_BUFFER = 0x2e,
    _RWBYTEADDRESS_BUFFER = 0x2f,
    _STRUCTURED_BUFFER = 0x30,
    _RWSTRUCTURED_BUFFER = 0x31,
    _APPEND_STRUCTURED_BUFFER = 0x32,
    _CONSUME_STRUCTURED_BUFFER = 0x33,
    _MIN8FLOAT = 0x34,
    _MIN10FLOAT = 0x35,
    _MIN16FLOAT = 0x36,
    _MIN12INT = 0x37,
    _MIN16INT = 0x38,
    _MIN16UINT = 0x39,
    D3D10_SVT_VOID = 0x0,
    D3D10_SVT_BOOL = 0x1,
    D3D10_SVT_INT = 0x2,
    D3D10_SVT_FLOAT = 0x3,
    D3D10_SVT_STRING = 0x4,
    D3D10_SVT_TEXTURE = 0x5,
    D3D10_SVT_TEXTURE1D = 0x6,
    D3D10_SVT_TEXTURE2D = 0x7,
    D3D10_SVT_TEXTURE3D = 0x8,
    D3D10_SVT_TEXTURECUBE = 0x9,
    D3D10_SVT_SAMPLER = 0xa,
    D3D10_SVT_SAMPLER1D = 0xb,
    D3D10_SVT_SAMPLER2D = 0xc,
    D3D10_SVT_SAMPLER3D = 0xd,
    D3D10_SVT_SAMPLERCUBE = 0xe,
    D3D10_SVT_PIXELSHADER = 0xf,
    D3D10_SVT_VERTEXSHADER = 0x10,
    D3D10_SVT_PIXELFRAGMENT = 0x11,
    D3D10_SVT_VERTEXFRAGMENT = 0x12,
    D3D10_SVT_UINT = 0x13,
    D3D10_SVT_UINT8 = 0x14,
    D3D10_SVT_GEOMETRYSHADER = 0x15,
    D3D10_SVT_RASTERIZER = 0x16,
    D3D10_SVT_DEPTHSTENCIL = 0x17,
    D3D10_SVT_BLEND = 0x18,
    D3D10_SVT_BUFFER = 0x19,
    D3D10_SVT_CBUFFER = 0x1a,
    D3D10_SVT_TBUFFER = 0x1b,
    D3D10_SVT_TEXTURE1DARRAY = 0x1c,
    D3D10_SVT_TEXTURE2DARRAY = 0x1d,
    D3D10_SVT_RENDERTARGETVIEW = 0x1e,
    D3D10_SVT_DEPTHSTENCILVIEW = 0x1f,
    D3D10_SVT_TEXTURE2DMS = 0x20,
    D3D10_SVT_TEXTURE2DMSARRAY = 0x21,
    D3D10_SVT_TEXTURECUBEARRAY = 0x22,
    D3D11_SVT_HULLSHADER = 0x23,
    D3D11_SVT_DOMAINSHADER = 0x24,
    D3D11_SVT_INTERFACE_POINTER = 0x25,
    D3D11_SVT_COMPUTESHADER = 0x26,
    D3D11_SVT_DOUBLE = 0x27,
    D3D11_SVT_RWTEXTURE1D = 0x28,
    D3D11_SVT_RWTEXTURE1DARRAY = 0x29,
    D3D11_SVT_RWTEXTURE2D = 0x2a,
    D3D11_SVT_RWTEXTURE2DARRAY = 0x2b,
    D3D11_SVT_RWTEXTURE3D = 0x2c,
    D3D11_SVT_RWBUFFER = 0x2d,
    D3D11_SVT_BYTEADDRESS_BUFFER = 0x2e,
    D3D11_SVT_RWBYTEADDRESS_BUFFER = 0x2f,
    D3D11_SVT_STRUCTURED_BUFFER = 0x30,
    D3D11_SVT_RWSTRUCTURED_BUFFER = 0x31,
    D3D11_SVT_APPEND_STRUCTURED_BUFFER = 0x32,
    D3D11_SVT_CONSUME_STRUCTURED_BUFFER = 0x33,
    _FORCE_DWORD = 0x7fffffff,
}
alias D3D_SHADER_VARIABLE_CLASS = _D3D_SHADER_VARIABLE_CLASS;
enum _D3D_SHADER_VARIABLE_CLASS
{
    _SCALAR = 0x0,
    _VECTOR = 0x1,
    _MATRIX_ROWS = 0x2,
    _MATRIX_COLUMNS = 0x3,
    _OBJECT = 0x4,
    _STRUCT = 0x5,
    _INTERFACE_CLASS = 0x6,
    _INTERFACE_POINTER = 0x7,
    D3D10_SVC_SCALAR = 0x0,
    D3D10_SVC_VECTOR = 0x1,
    D3D10_SVC_MATRIX_ROWS = 0x2,
    D3D10_SVC_MATRIX_COLUMNS = 0x3,
    D3D10_SVC_OBJECT = 0x4,
    D3D10_SVC_STRUCT = 0x5,
    D3D11_SVC_INTERFACE_CLASS = 0x6,
    D3D11_SVC_INTERFACE_POINTER = 0x7,
    _FORCE_DWORD = 0x7fffffff,
}
enum D3D_INTERPOLATION_MODE
{
    _UNDEFINED = 0x0,
    _CONSTANT = 0x1,
    _LINEAR = 0x2,
    _LINEAR_CENTROID = 0x3,
    _LINEAR_NOPERSPECTIVE = 0x4,
    _LINEAR_NOPERSPECTIVE_CENTROID = 0x5,
    _LINEAR_SAMPLE = 0x6,
    _LINEAR_NOPERSPECTIVE_SAMPLE = 0x7,
}
alias D3D_PARAMETER_FLAGS = _D3D_PARAMETER_FLAGS;
enum _D3D_PARAMETER_FLAGS
{
    _NONE = 0x0,
    _IN = 0x1,
    _OUT = 0x2,
    _FORCE_DWORD = 0x7fffffff,
}
enum D3D_RESOURCE_RETURN_TYPE
{
    D3D_RETURN_TYPE_UNORM = 0x1,
    D3D_RETURN_TYPE_SNORM = 0x2,
    D3D_RETURN_TYPE_SINT = 0x3,
    D3D_RETURN_TYPE_UINT = 0x4,
    D3D_RETURN_TYPE_FLOAT = 0x5,
    D3D_RETURN_TYPE_MIXED = 0x6,
    D3D_RETURN_TYPE_DOUBLE = 0x7,
    D3D_RETURN_TYPE_CONTINUED = 0x8,
    D3D10_RETURN_TYPE_UNORM = 0x1,
    D3D10_RETURN_TYPE_SNORM = 0x2,
    D3D10_RETURN_TYPE_SINT = 0x3,
    D3D10_RETURN_TYPE_UINT = 0x4,
    D3D10_RETURN_TYPE_FLOAT = 0x5,
    D3D10_RETURN_TYPE_MIXED = 0x6,
    D3D11_RETURN_TYPE_UNORM = 0x1,
    D3D11_RETURN_TYPE_SNORM = 0x2,
    D3D11_RETURN_TYPE_SINT = 0x3,
    D3D11_RETURN_TYPE_UINT = 0x4,
    D3D11_RETURN_TYPE_FLOAT = 0x5,
    D3D11_RETURN_TYPE_MIXED = 0x6,
    D3D11_RETURN_TYPE_DOUBLE = 0x7,
    D3D11_RETURN_TYPE_CONTINUED = 0x8,
}
alias D3D_CBUFFER_TYPE = _D3D_CBUFFER_TYPE;
enum _D3D_CBUFFER_TYPE
{
    _CBUFFER = 0x0,
    _TBUFFER = 0x1,
    _INTERFACE_POINTERS = 0x2,
    _RESOURCE_BIND_INFO = 0x3,
    D3D10_CT_CBUFFER = 0x0,
    D3D10_CT_TBUFFER = 0x1,
    D3D11_CT_CBUFFER = 0x0,
    D3D11_CT_TBUFFER = 0x1,
    D3D11_CT_INTERFACE_POINTERS = 0x2,
    D3D11_CT_RESOURCE_BIND_INFO = 0x3,
}
enum D3D_NAME
{
    _UNDEFINED = 0x0,
    _POSITION = 0x1,
    _CLIP_DISTANCE = 0x2,
    _CULL_DISTANCE = 0x3,
    _RENDER_TARGET_ARRAY_INDEX = 0x4,
    _VIEWPORT_ARRAY_INDEX = 0x5,
    _VERTEX_ID = 0x6,
    _PRIMITIVE_ID = 0x7,
    _INSTANCE_ID = 0x8,
    _IS_FRONT_FACE = 0x9,
    _SAMPLE_INDEX = 0xa,
    _FINAL_QUAD_EDGE_TESSFACTOR = 0xb,
    _FINAL_QUAD_INSIDE_TESSFACTOR = 0xc,
    _FINAL_TRI_EDGE_TESSFACTOR = 0xd,
    _FINAL_TRI_INSIDE_TESSFACTOR = 0xe,
    _FINAL_LINE_DETAIL_TESSFACTOR = 0xf,
    _FINAL_LINE_DENSITY_TESSFACTOR = 0x10,
    _BARYCENTRICS = 0x17,
    _TARGET = 0x40,
    _DEPTH = 0x41,
    _COVERAGE = 0x42,
    _DEPTH_GREATER_EQUAL = 0x43,
    _DEPTH_LESS_EQUAL = 0x44,
    _STENCIL_REF = 0x45,
    _INNER_COVERAGE = 0x46,
    D3D10_NAME_UNDEFINED = 0x0,
    D3D10_NAME_POSITION = 0x1,
    D3D10_NAME_CLIP_DISTANCE = 0x2,
    D3D10_NAME_CULL_DISTANCE = 0x3,
    D3D10_NAME_RENDER_TARGET_ARRAY_INDEX = 0x4,
    D3D10_NAME_VIEWPORT_ARRAY_INDEX = 0x5,
    D3D10_NAME_VERTEX_ID = 0x6,
    D3D10_NAME_PRIMITIVE_ID = 0x7,
    D3D10_NAME_INSTANCE_ID = 0x8,
    D3D10_NAME_IS_FRONT_FACE = 0x9,
    D3D10_NAME_SAMPLE_INDEX = 0xa,
    D3D10_NAME_TARGET = 0x40,
    D3D10_NAME_DEPTH = 0x41,
    D3D10_NAME_COVERAGE = 0x42,
    D3D11_NAME_FINAL_QUAD_EDGE_TESSFACTOR = 0xb,
    D3D11_NAME_FINAL_QUAD_INSIDE_TESSFACTOR = 0xc,
    D3D11_NAME_FINAL_TRI_EDGE_TESSFACTOR = 0xd,
    D3D11_NAME_FINAL_TRI_INSIDE_TESSFACTOR = 0xe,
    D3D11_NAME_FINAL_LINE_DETAIL_TESSFACTOR = 0xf,
    D3D11_NAME_FINAL_LINE_DENSITY_TESSFACTOR = 0x10,
    D3D11_NAME_DEPTH_GREATER_EQUAL = 0x43,
    D3D11_NAME_DEPTH_LESS_EQUAL = 0x44,
    D3D11_NAME_STENCIL_REF = 0x45,
    D3D11_NAME_INNER_COVERAGE = 0x46,
    D3D12_NAME_BARYCENTRICS = 0x17,
}
enum D3D_REGISTER_COMPONENT_TYPE
{
    _UNKNOWN = 0x0,
    _UINT32 = 0x1,
    _SINT32 = 0x2,
    _FLOAT32 = 0x3,
    D3D10_REGISTER_COMPONENT_UNKNOWN = 0x0,
    D3D10_REGISTER_COMPONENT_UINT32 = 0x1,
    D3D10_REGISTER_COMPONENT_SINT32 = 0x2,
    D3D10_REGISTER_COMPONENT_FLOAT32 = 0x3,
}
enum D3D_MIN_PRECISION
{
    _DEFAULT = 0x0,
    _FLOAT_16 = 0x1,
    _FLOAT_2_8 = 0x2,
    _RESERVED = 0x3,
    _SINT_16 = 0x4,
    _UINT_16 = 0x5,
    _ANY_16 = 0xf0,
    _ANY_10 = 0xf1,
}
enum D3D_TESSELLATOR_DOMAIN
{
    _UNDEFINED = 0x0,
    _ISOLINE = 0x1,
    _TRI = 0x2,
    _QUAD = 0x3,
    D3D11_TESSELLATOR_DOMAIN_UNDEFINED = 0x0,
    D3D11_TESSELLATOR_DOMAIN_ISOLINE = 0x1,
    D3D11_TESSELLATOR_DOMAIN_TRI = 0x2,
    D3D11_TESSELLATOR_DOMAIN_QUAD = 0x3,
}
enum D3D_TESSELLATOR_PARTITIONING
{
    _UNDEFINED = 0x0,
    _INTEGER = 0x1,
    _POW2 = 0x2,
    _FRACTIONAL_ODD = 0x3,
    _FRACTIONAL_EVEN = 0x4,
    D3D11_TESSELLATOR_PARTITIONING_UNDEFINED = 0x0,
    D3D11_TESSELLATOR_PARTITIONING_INTEGER = 0x1,
    D3D11_TESSELLATOR_PARTITIONING_POW2 = 0x2,
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_ODD = 0x3,
    D3D11_TESSELLATOR_PARTITIONING_FRACTIONAL_EVEN = 0x4,
}
enum D3D_TESSELLATOR_OUTPUT_PRIMITIVE
{
    _UNDEFINED = 0x0,
    _POINT = 0x1,
    _LINE = 0x2,
    _TRIANGLE_CW = 0x3,
    _TRIANGLE_CCW = 0x4,
    D3D11_TESSELLATOR_OUTPUT_UNDEFINED = 0x0,
    D3D11_TESSELLATOR_OUTPUT_POINT = 0x1,
    D3D11_TESSELLATOR_OUTPUT_LINE = 0x2,
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CW = 0x3,
    D3D11_TESSELLATOR_OUTPUT_TRIANGLE_CCW = 0x4,
}
alias D3D_SHADER_INPUT_TYPE = _D3D_SHADER_INPUT_TYPE;
enum _D3D_SHADER_INPUT_TYPE
{
    _CBUFFER = 0x0,
    _TBUFFER = 0x1,
    _TEXTURE = 0x2,
    _SAMPLER = 0x3,
    _UAV_RWTYPED = 0x4,
    _STRUCTURED = 0x5,
    _UAV_RWSTRUCTURED = 0x6,
    _BYTEADDRESS = 0x7,
    _UAV_RWBYTEADDRESS = 0x8,
    _UAV_APPEND_STRUCTURED = 0x9,
    _UAV_CONSUME_STRUCTURED = 0xa,
    _UAV_RWSTRUCTURED_WITH_COUNTER = 0xb,
    D3D10_SIT_CBUFFER = 0x0,
    D3D10_SIT_TBUFFER = 0x1,
    D3D10_SIT_TEXTURE = 0x2,
    D3D10_SIT_SAMPLER = 0x3,
    D3D11_SIT_UAV_RWTYPED = 0x4,
    D3D11_SIT_STRUCTURED = 0x5,
    D3D11_SIT_UAV_RWSTRUCTURED = 0x6,
    D3D11_SIT_BYTEADDRESS = 0x7,
    D3D11_SIT_UAV_RWBYTEADDRESS = 0x8,
    D3D11_SIT_UAV_APPEND_STRUCTURED = 0x9,
    D3D11_SIT_UAV_CONSUME_STRUCTURED = 0xa,
    D3D11_SIT_UAV_RWSTRUCTURED_WITH_COUNTER = 0xb,
}
