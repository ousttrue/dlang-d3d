// cpptypeinfo generated
module windowskits.d3d10;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;
import windowskits.unknwnbase;
import windowskits.dxgiformat;
import windowskits.d3dcommon;
import windowskits.windef;
import windowskits.dxgicommon;

enum D3D10_RESOURCE_DIMENSION {
    UNKNOWN = 0x00000000,
    BUFFER = 0x00000001,
    TEXTURE1D = 0x00000002,
    TEXTURE2D = 0x00000003,
    TEXTURE3D = 0x00000004,
}

enum D3D10_MAP {
    READ = 0x00000001,
    WRITE = 0x00000002,
    READ_WRITE = 0x00000003,
    WRITE_DISCARD = 0x00000004,
    WRITE_NO_OVERWRITE = 0x00000005,
}

enum D3D10_COUNTER_TYPE {
    FLOAT32 = 0x00000000,
    UINT16 = 0x00000001,
    UINT32 = 0x00000002,
    UINT64 = 0x00000003,
}

enum D3D10_INPUT_CLASSIFICATION {
    D3D10_INPUT_PER_VERTEX_DATA = 0x00000000,
    D3D10_INPUT_PER_INSTANCE_DATA = 0x00000001,
}

enum D3D10_FILL_MODE {
    WIREFRAME = 0x00000002,
    SOLID = 0x00000003,
}

enum D3D10_CULL_MODE {
    NONE = 0x00000001,
    FRONT = 0x00000002,
    BACK = 0x00000003,
}

enum D3D10_DSV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE1D = 0x00000001,
    TEXTURE1DARRAY = 0x00000002,
    TEXTURE2D = 0x00000003,
    TEXTURE2DARRAY = 0x00000004,
    TEXTURE2DMS = 0x00000005,
    TEXTURE2DMSARRAY = 0x00000006,
}

enum D3D10_RTV_DIMENSION {
    UNKNOWN = 0x00000000,
    BUFFER = 0x00000001,
    TEXTURE1D = 0x00000002,
    TEXTURE1DARRAY = 0x00000003,
    TEXTURE2D = 0x00000004,
    TEXTURE2DARRAY = 0x00000005,
    TEXTURE2DMS = 0x00000006,
    TEXTURE2DMSARRAY = 0x00000007,
    TEXTURE3D = 0x00000008,
}

enum D3D10_USAGE {
    DEFAULT = 0x00000000,
    IMMUTABLE = 0x00000001,
    DYNAMIC = 0x00000002,
    STAGING = 0x00000003,
}

enum D3D10_BIND_FLAG {
    VERTEX_BUFFER = 0x00000001,
    INDEX_BUFFER = 0x00000002,
    CONSTANT_BUFFER = 0x00000004,
    SHADER_RESOURCE = 0x00000008,
    STREAM_OUTPUT = 0x00000010,
    RENDER_TARGET = 0x00000020,
    DEPTH_STENCIL = 0x00000040,
}

enum D3D10_CPU_ACCESS_FLAG {
    WRITE = 0x00010000,
    READ = 0x00020000,
}

enum D3D10_RESOURCE_MISC_FLAG {
    GENERATE_MIPS = 0x00000001,
    SHARED = 0x00000002,
    TEXTURECUBE = 0x00000004,
    SHARED_KEYEDMUTEX = 0x00000010,
    GDI_COMPATIBLE = 0x00000020,
}

enum D3D10_MAP_FLAG {
    DO_NOT_WAIT = 0x00100000,
}

enum D3D10_RAISE_FLAG {
    DRIVER_INTERNAL_ERROR = 0x00000001,
}

enum D3D10_CLEAR_FLAG {
    DEPTH = 0x00000001,
    STENCIL = 0x00000002,
}

enum D3D10_COMPARISON_FUNC {
    D3D10_COMPARISON_NEVER = 0x00000001,
    D3D10_COMPARISON_LESS = 0x00000002,
    D3D10_COMPARISON_EQUAL = 0x00000003,
    D3D10_COMPARISON_LESS_EQUAL = 0x00000004,
    D3D10_COMPARISON_GREATER = 0x00000005,
    D3D10_COMPARISON_NOT_EQUAL = 0x00000006,
    D3D10_COMPARISON_GREATER_EQUAL = 0x00000007,
    D3D10_COMPARISON_ALWAYS = 0x00000008,
}

enum D3D10_DEPTH_WRITE_MASK {
    ZERO = 0x00000000,
    ALL = 0x00000001,
}

enum D3D10_STENCIL_OP {
    KEEP = 0x00000001,
    ZERO = 0x00000002,
    REPLACE = 0x00000003,
    INCR_SAT = 0x00000004,
    DECR_SAT = 0x00000005,
    INVERT = 0x00000006,
    INCR = 0x00000007,
    DECR = 0x00000008,
}

enum D3D10_BLEND {
    ZERO = 0x00000001,
    ONE = 0x00000002,
    SRC_COLOR = 0x00000003,
    INV_SRC_COLOR = 0x00000004,
    SRC_ALPHA = 0x00000005,
    INV_SRC_ALPHA = 0x00000006,
    DEST_ALPHA = 0x00000007,
    INV_DEST_ALPHA = 0x00000008,
    DEST_COLOR = 0x00000009,
    INV_DEST_COLOR = 0x0000000a,
    SRC_ALPHA_SAT = 0x0000000b,
    BLEND_FACTOR = 0x0000000e,
    INV_BLEND_FACTOR = 0x0000000f,
    SRC1_COLOR = 0x00000010,
    INV_SRC1_COLOR = 0x00000011,
    SRC1_ALPHA = 0x00000012,
    INV_SRC1_ALPHA = 0x00000013,
}

enum D3D10_BLEND_OP {
    ADD = 0x00000001,
    SUBTRACT = 0x00000002,
    REV_SUBTRACT = 0x00000003,
    MIN = 0x00000004,
    MAX = 0x00000005,
}

enum D3D10_COLOR_WRITE_ENABLE {
    RED = 0x00000001,
    GREEN = 0x00000002,
    BLUE = 0x00000004,
    ALPHA = 0x00000008,
    ALL = 0x0000000f,
}

enum D3D10_TEXTURECUBE_FACE {
    POSITIVE_X = 0x00000000,
    NEGATIVE_X = 0x00000001,
    POSITIVE_Y = 0x00000002,
    NEGATIVE_Y = 0x00000003,
    POSITIVE_Z = 0x00000004,
    NEGATIVE_Z = 0x00000005,
}

enum D3D10_FILTER {
    MIN_MAG_MIP_POINT = 0x00000000,
    MIN_MAG_POINT_MIP_LINEAR = 0x00000001,
    MIN_POINT_MAG_LINEAR_MIP_POINT = 0x00000004,
    MIN_POINT_MAG_MIP_LINEAR = 0x00000005,
    MIN_LINEAR_MAG_MIP_POINT = 0x00000010,
    MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x00000011,
    MIN_MAG_LINEAR_MIP_POINT = 0x00000014,
    MIN_MAG_MIP_LINEAR = 0x00000015,
    ANISOTROPIC = 0x00000055,
    COMPARISON_MIN_MAG_MIP_POINT = 0x00000080,
    COMPARISON_MIN_MAG_POINT_MIP_LINEAR = 0x00000081,
    COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT = 0x00000084,
    COMPARISON_MIN_POINT_MAG_MIP_LINEAR = 0x00000085,
    COMPARISON_MIN_LINEAR_MAG_MIP_POINT = 0x00000090,
    COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x00000091,
    COMPARISON_MIN_MAG_LINEAR_MIP_POINT = 0x00000094,
    COMPARISON_MIN_MAG_MIP_LINEAR = 0x00000095,
    COMPARISON_ANISOTROPIC = 0x000000d5,
    TEXT_1BIT = -0x80000000,
}

enum D3D10_FILTER_TYPE {
    POINT = 0x00000000,
    LINEAR = 0x00000001,
}

enum D3D10_TEXTURE_ADDRESS_MODE {
    WRAP = 0x00000001,
    MIRROR = 0x00000002,
    CLAMP = 0x00000003,
    BORDER = 0x00000004,
    MIRROR_ONCE = 0x00000005,
}

enum D3D10_FORMAT_SUPPORT {
    BUFFER = 0x00000001,
    IA_VERTEX_BUFFER = 0x00000002,
    IA_INDEX_BUFFER = 0x00000004,
    SO_BUFFER = 0x00000008,
    TEXTURE1D = 0x00000010,
    TEXTURE2D = 0x00000020,
    TEXTURE3D = 0x00000040,
    TEXTURECUBE = 0x00000080,
    SHADER_LOAD = 0x00000100,
    SHADER_SAMPLE = 0x00000200,
    SHADER_SAMPLE_COMPARISON = 0x00000400,
    SHADER_SAMPLE_MONO_TEXT = 0x00000800,
    MIP = 0x00001000,
    MIP_AUTOGEN = 0x00002000,
    RENDER_TARGET = 0x00004000,
    BLENDABLE = 0x00008000,
    DEPTH_STENCIL = 0x00010000,
    CPU_LOCKABLE = 0x00020000,
    MULTISAMPLE_RESOLVE = 0x00040000,
    DISPLAY = 0x00080000,
    CAST_WITHIN_BIT_LAYOUT = 0x00100000,
    MULTISAMPLE_RENDERTARGET = 0x00200000,
    MULTISAMPLE_LOAD = 0x00400000,
    SHADER_GATHER = 0x00800000,
    BACK_BUFFER_CAST = 0x01000000,
}

enum D3D10_ASYNC_GETDATA_FLAG {
    DONOTFLUSH = 0x00000001,
}

enum D3D10_QUERY {
    EVENT = 0x00000000,
    OCCLUSION = 0x00000001,
    TIMESTAMP = 0x00000002,
    TIMESTAMP_DISJOINT = 0x00000003,
    PIPELINE_STATISTICS = 0x00000004,
    OCCLUSION_PREDICATE = 0x00000005,
    SO_STATISTICS = 0x00000006,
    SO_OVERFLOW_PREDICATE = 0x00000007,
}

enum D3D10_QUERY_MISC_FLAG {
    PREDICATEHINT = 0x00000001,
}

enum D3D10_COUNTER {
    GPU_IDLE = 0x00000000,
    VERTEX_PROCESSING = 0x00000001,
    GEOMETRY_PROCESSING = 0x00000002,
    PIXEL_PROCESSING = 0x00000003,
    OTHER_GPU_PROCESSING = 0x00000004,
    HOST_ADAPTER_BANDWIDTH_UTILIZATION = 0x00000005,
    LOCAL_VIDMEM_BANDWIDTH_UTILIZATION = 0x00000006,
    VERTEX_THROUGHPUT_UTILIZATION = 0x00000007,
    TRIANGLE_SETUP_THROUGHPUT_UTILIZATION = 0x00000008,
    FILLRATE_THROUGHPUT_UTILIZATION = 0x00000009,
    VS_MEMORY_LIMITED = 0x0000000a,
    VS_COMPUTATION_LIMITED = 0x0000000b,
    GS_MEMORY_LIMITED = 0x0000000c,
    GS_COMPUTATION_LIMITED = 0x0000000d,
    PS_MEMORY_LIMITED = 0x0000000e,
    PS_COMPUTATION_LIMITED = 0x0000000f,
    POST_TRANSFORM_CACHE_HIT_RATE = 0x00000010,
    TEXTURE_CACHE_HIT_RATE = 0x00000011,
    DEVICE_DEPENDENT_0 = 0x40000000,
}

enum D3D10_CREATE_DEVICE_FLAG {
    SINGLETHREADED = 0x00000001,
    DEBUG = 0x00000002,
    SWITCH_TO_REF = 0x00000004,
    PREVENT_INTERNAL_THREADING_OPTIMIZATIONS = 0x00000008,
    ALLOW_NULL_FROM_MAP = 0x00000010,
    BGRA_SUPPORT = 0x00000020,
    PREVENT_ALTERING_LAYER_SETTINGS_FROM_REGISTRY = 0x00000080,
    STRICT_VALIDATION = 0x00000200,
    DEBUGGABLE = 0x00000400,
}

struct D3D10_DEPTH_STENCIL_DESC{
    int DepthEnable;
    D3D10_DEPTH_WRITE_MASK DepthWriteMask;
    D3D10_COMPARISON_FUNC DepthFunc;
    int StencilEnable;
    ubyte StencilReadMask;
    ubyte StencilWriteMask;
    D3D10_DEPTH_STENCILOP_DESC FrontFace;
    D3D10_DEPTH_STENCILOP_DESC BackFace;
}

struct D3D10_BLEND_DESC{
    int AlphaToCoverageEnable;
    int* BlendEnable;
    D3D10_BLEND SrcBlend;
    D3D10_BLEND DestBlend;
    D3D10_BLEND_OP BlendOp;
    D3D10_BLEND SrcBlendAlpha;
    D3D10_BLEND DestBlendAlpha;
    D3D10_BLEND_OP BlendOpAlpha;
    ubyte* RenderTargetWriteMask;
}

struct D3D10_RASTERIZER_DESC{
    D3D10_FILL_MODE FillMode;
    D3D10_CULL_MODE CullMode;
    int FrontCounterClockwise;
    int DepthBias;
    float DepthBiasClamp;
    float SlopeScaledDepthBias;
    int DepthClipEnable;
    int ScissorEnable;
    int MultisampleEnable;
    int AntialiasedLineEnable;
}

struct D3D10_BUFFER_DESC{
    uint ByteWidth;
    D3D10_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D10_TEXTURE1D_DESC{
    uint Width;
    uint MipLevels;
    uint ArraySize;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D10_MAPPED_TEXTURE2D{
    void* pData;
    uint RowPitch;
}

struct D3D10_TEXTURE2D_DESC{
    uint Width;
    uint Height;
    uint MipLevels;
    uint ArraySize;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
    D3D10_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D10_MAPPED_TEXTURE3D{
    void* pData;
    uint RowPitch;
    uint DepthPitch;
}

struct D3D10_TEXTURE3D_DESC{
    uint Width;
    uint Height;
    uint Depth;
    uint MipLevels;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D10_SHADER_RESOURCE_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D_SRV_DIMENSION ViewDimension;
    union {
D3D10_BUFFER_SRV Buffer;
D3D10_TEX1D_SRV Texture1D;
D3D10_TEX1D_ARRAY_SRV Texture1DArray;
D3D10_TEX2D_SRV Texture2D;
D3D10_TEX2D_ARRAY_SRV Texture2DArray;
D3D10_TEX2DMS_SRV Texture2DMS;
D3D10_TEX2DMS_ARRAY_SRV Texture2DMSArray;
D3D10_TEX3D_SRV Texture3D;
D3D10_TEXCUBE_SRV TextureCube;
} ;
}

struct D3D10_RENDER_TARGET_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D10_RTV_DIMENSION ViewDimension;
    union {
D3D10_BUFFER_RTV Buffer;
D3D10_TEX1D_RTV Texture1D;
D3D10_TEX1D_ARRAY_RTV Texture1DArray;
D3D10_TEX2D_RTV Texture2D;
D3D10_TEX2D_ARRAY_RTV Texture2DArray;
D3D10_TEX2DMS_RTV Texture2DMS;
D3D10_TEX2DMS_ARRAY_RTV Texture2DMSArray;
D3D10_TEX3D_RTV Texture3D;
} ;
}

struct D3D10_DEPTH_STENCIL_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D10_DSV_DIMENSION ViewDimension;
    union {
D3D10_TEX1D_DSV Texture1D;
D3D10_TEX1D_ARRAY_DSV Texture1DArray;
D3D10_TEX2D_DSV Texture2D;
D3D10_TEX2D_ARRAY_DSV Texture2DArray;
D3D10_TEX2DMS_DSV Texture2DMS;
D3D10_TEX2DMS_ARRAY_DSV Texture2DMSArray;
} ;
}

struct D3D10_SAMPLER_DESC{
    D3D10_FILTER Filter;
    D3D10_TEXTURE_ADDRESS_MODE AddressU;
    D3D10_TEXTURE_ADDRESS_MODE AddressV;
    D3D10_TEXTURE_ADDRESS_MODE AddressW;
    float MipLODBias;
    uint MaxAnisotropy;
    D3D10_COMPARISON_FUNC ComparisonFunc;
    float* BorderColor;
    float MinLOD;
    float MaxLOD;
}

struct D3D10_QUERY_DESC{
    D3D10_QUERY Query;
    uint MiscFlags;
}

struct D3D10_COUNTER_DESC{
    D3D10_COUNTER Counter;
    uint MiscFlags;
}

struct D3D10_VIEWPORT{
    int TopLeftX;
    int TopLeftY;
    uint Width;
    uint Height;
    float MinDepth;
    float MaxDepth;
}

struct D3D10_BOX{
    uint left;
    uint top;
    uint front;
    uint right;
    uint bottom;
    uint back;
}

struct D3D10_SUBRESOURCE_DATA{
    void* pSysMem;
    uint SysMemPitch;
    uint SysMemSlicePitch;
}

struct D3D10_INPUT_ELEMENT_DESC{
    byte* SemanticName;
    uint SemanticIndex;
    DXGI_FORMAT Format;
    uint InputSlot;
    uint AlignedByteOffset;
    D3D10_INPUT_CLASSIFICATION InputSlotClass;
    uint InstanceDataStepRate;
}

struct D3D10_SO_DECLARATION_ENTRY{
    byte* SemanticName;
    uint SemanticIndex;
    ubyte StartComponent;
    ubyte ComponentCount;
    ubyte OutputSlot;
}

struct D3D10_COUNTER_INFO{
    D3D10_COUNTER LastDeviceDependentCounter;
    uint NumSimultaneousCounters;
    ubyte NumDetectableParallelUnits;
}

struct D3D10_DEPTH_STENCILOP_DESC{
    D3D10_STENCIL_OP StencilFailOp;
    D3D10_STENCIL_OP StencilDepthFailOp;
    D3D10_STENCIL_OP StencilPassOp;
    D3D10_COMPARISON_FUNC StencilFunc;
}

struct D3D10_BUFFER_SRV{
    union {
uint FirstElement;
uint ElementOffset;
} ;
    union {
uint NumElements;
uint ElementWidth;
} ;
}

struct D3D10_TEX1D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D10_TEX1D_ARRAY_SRV{
    uint MostDetailedMip;
    uint MipLevels;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D10_TEX2D_ARRAY_SRV{
    uint MostDetailedMip;
    uint MipLevels;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2DMS_SRV{
    uint UnusedField_NothingToDefine;
}

struct D3D10_TEX2DMS_ARRAY_SRV{
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX3D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D10_TEXCUBE_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D10_BUFFER_RTV{
    union {
uint FirstElement;
uint ElementOffset;
} ;
    union {
uint NumElements;
uint ElementWidth;
} ;
}

struct D3D10_TEX1D_RTV{
    uint MipSlice;
}

struct D3D10_TEX1D_ARRAY_RTV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2D_RTV{
    uint MipSlice;
}

struct D3D10_TEX2D_ARRAY_RTV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2DMS_RTV{
    uint UnusedField_NothingToDefine;
}

struct D3D10_TEX2DMS_ARRAY_RTV{
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX3D_RTV{
    uint MipSlice;
    uint FirstWSlice;
    uint WSize;
}

struct D3D10_TEX1D_DSV{
    uint MipSlice;
}

struct D3D10_TEX1D_ARRAY_DSV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2D_DSV{
    uint MipSlice;
}

struct D3D10_TEX2D_ARRAY_DSV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D10_TEX2DMS_DSV{
    uint UnusedField_NothingToDefine;
}

struct D3D10_TEX2DMS_ARRAY_DSV{
    uint FirstArraySlice;
    uint ArraySize;
}

// d3d10.h: 828
interface ID3D10DeviceChild: IUnknown {
    static immutable iidof = GUID(0x9b7e4c00, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDevice(ID3D10Device** ppDevice);
    int GetPrivateData(_GUID* guid, uint* pDataSize, void* pData);
    int SetPrivateData(_GUID* guid, uint DataSize, void* pData);
    int SetPrivateDataInterface(_GUID* guid, IUnknown* pData);
}

// d3d10.h: 1027
interface ID3D10DepthStencilState: ID3D10DeviceChild {
    static immutable iidof = GUID(0x2b4b1cc8, 0xa4ad, 0x41f8, [0x83, 0x22, 0xca, 0x86, 0xfc, 0x3e, 0xc6, 0x75]);
    void GetDesc(D3D10_DEPTH_STENCIL_DESC* pDesc);
}

// d3d10.h: 1215
interface ID3D10BlendState: ID3D10DeviceChild {
    static immutable iidof = GUID(0xedad8d19, 0x8a35, 0x4d6d, [0x85, 0x66, 0x2e, 0xa2, 0x76, 0xcd, 0xe1, 0x61]);
    void GetDesc(D3D10_BLEND_DESC* pDesc);
}

// d3d10.h: 1362
interface ID3D10RasterizerState: ID3D10DeviceChild {
    static immutable iidof = GUID(0xa2a07292, 0x89af, 0x4345, [0xbe, 0x2e, 0xc5, 0x3d, 0x9f, 0xbb, 0x6e, 0x9f]);
    void GetDesc(D3D10_RASTERIZER_DESC* pDesc);
}

// d3d10.h: 1506
interface ID3D10Resource: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c01, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetType(D3D10_RESOURCE_DIMENSION* rType);
    void SetEvictionPriority(uint EvictionPriority);
    uint GetEvictionPriority();
}

// d3d10.h: 1692
interface ID3D10Buffer: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c02, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(D3D10_MAP MapType, uint MapFlags, void** ppData);
    void Unmap();
    void GetDesc(D3D10_BUFFER_DESC* pDesc);
}

// d3d10.h: 1918
interface ID3D10Texture1D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c03, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Subresource, D3D10_MAP MapType, uint MapFlags, void** ppData);
    void Unmap(uint Subresource);
    void GetDesc(D3D10_TEXTURE1D_DESC* pDesc);
}

// d3d10.h: 2166
interface ID3D10Texture2D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c04, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Subresource, D3D10_MAP MapType, uint MapFlags, D3D10_MAPPED_TEXTURE2D* pMappedTex2D);
    void Unmap(uint Subresource);
    void GetDesc(D3D10_TEXTURE2D_DESC* pDesc);
}

// d3d10.h: 2410
interface ID3D10Texture3D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c05, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Subresource, D3D10_MAP MapType, uint MapFlags, D3D10_MAPPED_TEXTURE3D* pMappedTex3D);
    void Unmap(uint Subresource);
    void GetDesc(D3D10_TEXTURE3D_DESC* pDesc);
}

// d3d10.h: 2613
interface ID3D10View: ID3D10DeviceChild {
    static immutable iidof = GUID(0xc902b03f, 0x60a7, 0x49ba, [0x99, 0x36, 0x2a, 0x3a, 0xb3, 0x7a, 0x7e, 0x33]);
    void GetResource(ID3D10Resource** ppResource);
}

// d3d10.h: 2829
interface ID3D10ShaderResourceView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c07, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_SHADER_RESOURCE_VIEW_DESC* pDesc);
}

// d3d10.h: 3044
interface ID3D10RenderTargetView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c08, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_RENDER_TARGET_VIEW_DESC* pDesc);
}

// d3d10.h: 3236
interface ID3D10DepthStencilView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c09, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_DEPTH_STENCIL_VIEW_DESC* pDesc);
}

// d3d10.h: 3370
interface ID3D10VertexShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0a, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

// d3d10.h: 3483
interface ID3D10GeometryShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x6316be88, 0x54cd, 0x4040, [0xab, 0x44, 0x20, 0x46, 0x1b, 0xc8, 0x1f, 0x68]);
}

// d3d10.h: 3596
interface ID3D10PixelShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x4968b601, 0x9d00, 0x4cde, [0x83, 0x46, 0x8e, 0x7f, 0x67, 0x58, 0x19, 0xb6]);
}

// d3d10.h: 3709
interface ID3D10InputLayout: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0b, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

// d3d10.h: 3930
interface ID3D10SamplerState: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0c, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_SAMPLER_DESC* pDesc);
}

// d3d10.h: 4093
interface ID3D10Asynchronous: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0d, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void Begin();
    void End();
    int GetData(void* pData, uint DataSize, uint GetDataFlags);
    uint GetDataSize();
}

// d3d10.h: 4289
interface ID3D10Query: ID3D10Asynchronous {
    static immutable iidof = GUID(0x9b7e4c0e, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_QUERY_DESC* pDesc);
}

// d3d10.h: 4445
interface ID3D10Predicate: ID3D10Query {
    static immutable iidof = GUID(0x9b7e4c10, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

// d3d10.h: 4676
interface ID3D10Counter: ID3D10Asynchronous {
    static immutable iidof = GUID(0x9b7e4c11, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_COUNTER_DESC* pDesc);
}

// d3d10.h: 4832
interface ID3D10Device: IUnknown {
    static immutable iidof = GUID(0x9b7e4c0f, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void VSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void PSSetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void PSSetShader(ID3D10PixelShader* pPixelShader);
    void PSSetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void VSSetShader(ID3D10VertexShader* pVertexShader);
    void DrawIndexed(uint IndexCount, uint StartIndexLocation, int BaseVertexLocation);
    void Draw(uint VertexCount, uint StartVertexLocation);
    void PSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void IASetInputLayout(ID3D10InputLayout* pInputLayout);
    void IASetVertexBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppVertexBuffers, uint* pStrides, uint* pOffsets);
    void IASetIndexBuffer(ID3D10Buffer* pIndexBuffer, DXGI_FORMAT Format, uint Offset);
    void DrawIndexedInstanced(uint IndexCountPerInstance, uint InstanceCount, uint StartIndexLocation, int BaseVertexLocation, uint StartInstanceLocation);
    void DrawInstanced(uint VertexCountPerInstance, uint InstanceCount, uint StartVertexLocation, uint StartInstanceLocation);
    void GSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void GSSetShader(ID3D10GeometryShader* pShader);
    void IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY Topology);
    void VSSetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void VSSetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void SetPredication(ID3D10Predicate* pPredicate, int PredicateValue);
    void GSSetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void GSSetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void OMSetRenderTargets(uint NumViews, ID3D10RenderTargetView** ppRenderTargetViews, ID3D10DepthStencilView* pDepthStencilView);
    void OMSetBlendState(ID3D10BlendState* pBlendState, float* BlendFactor, uint SampleMask);
    void OMSetDepthStencilState(ID3D10DepthStencilState* pDepthStencilState, uint StencilRef);
    void SOSetTargets(uint NumBuffers, ID3D10Buffer** ppSOTargets, uint* pOffsets);
    void DrawAuto();
    void RSSetState(ID3D10RasterizerState* pRasterizerState);
    void RSSetViewports(uint NumViewports, D3D10_VIEWPORT* pViewports);
    void RSSetScissorRects(uint NumRects, tagRECT* pRects);
    void CopySubresourceRegion(ID3D10Resource* pDstResource, uint DstSubresource, uint DstX, uint DstY, uint DstZ, ID3D10Resource* pSrcResource, uint SrcSubresource, D3D10_BOX* pSrcBox);
    void CopyResource(ID3D10Resource* pDstResource, ID3D10Resource* pSrcResource);
    void UpdateSubresource(ID3D10Resource* pDstResource, uint DstSubresource, D3D10_BOX* pDstBox, void* pSrcData, uint SrcRowPitch, uint SrcDepthPitch);
    void ClearRenderTargetView(ID3D10RenderTargetView* pRenderTargetView, float* ColorRGBA);
    void ClearDepthStencilView(ID3D10DepthStencilView* pDepthStencilView, uint ClearFlags, float Depth, ubyte Stencil);
    void GenerateMips(ID3D10ShaderResourceView* pShaderResourceView);
    void ResolveSubresource(ID3D10Resource* pDstResource, uint DstSubresource, ID3D10Resource* pSrcResource, uint SrcSubresource, DXGI_FORMAT Format);
    void VSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void PSGetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void PSGetShader(ID3D10PixelShader** ppPixelShader);
    void PSGetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void VSGetShader(ID3D10VertexShader** ppVertexShader);
    void PSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void IAGetInputLayout(ID3D10InputLayout** ppInputLayout);
    void IAGetVertexBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppVertexBuffers, uint* pStrides, uint* pOffsets);
    void IAGetIndexBuffer(ID3D10Buffer** pIndexBuffer, DXGI_FORMAT* Format, uint* Offset);
    void GSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D10Buffer** ppConstantBuffers);
    void GSGetShader(ID3D10GeometryShader** ppGeometryShader);
    void IAGetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY* pTopology);
    void VSGetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void VSGetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void GetPredication(ID3D10Predicate** ppPredicate, int* pPredicateValue);
    void GSGetShaderResources(uint StartSlot, uint NumViews, ID3D10ShaderResourceView** ppShaderResourceViews);
    void GSGetSamplers(uint StartSlot, uint NumSamplers, ID3D10SamplerState** ppSamplers);
    void OMGetRenderTargets(uint NumViews, ID3D10RenderTargetView** ppRenderTargetViews, ID3D10DepthStencilView** ppDepthStencilView);
    void OMGetBlendState(ID3D10BlendState** ppBlendState, float* BlendFactor, uint* pSampleMask);
    void OMGetDepthStencilState(ID3D10DepthStencilState** ppDepthStencilState, uint* pStencilRef);
    void SOGetTargets(uint NumBuffers, ID3D10Buffer** ppSOTargets, uint* pOffsets);
    void RSGetState(ID3D10RasterizerState** ppRasterizerState);
    void RSGetViewports(uint* NumViewports, D3D10_VIEWPORT* pViewports);
    void RSGetScissorRects(uint* NumRects, tagRECT* pRects);
    int GetDeviceRemovedReason();
    int SetExceptionMode(uint RaiseFlags);
    uint GetExceptionMode();
    int GetPrivateData(_GUID* guid, uint* pDataSize, void* pData);
    int SetPrivateData(_GUID* guid, uint DataSize, void* pData);
    int SetPrivateDataInterface(_GUID* guid, IUnknown* pData);
    void ClearState();
    void Flush();
    int CreateBuffer(D3D10_BUFFER_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Buffer** ppBuffer);
    int CreateTexture1D(D3D10_TEXTURE1D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture1D** ppTexture1D);
    int CreateTexture2D(D3D10_TEXTURE2D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture2D** ppTexture2D);
    int CreateTexture3D(D3D10_TEXTURE3D_DESC* pDesc, D3D10_SUBRESOURCE_DATA* pInitialData, ID3D10Texture3D** ppTexture3D);
    int CreateShaderResourceView(ID3D10Resource* pResource, D3D10_SHADER_RESOURCE_VIEW_DESC* pDesc, ID3D10ShaderResourceView** ppSRView);
    int CreateRenderTargetView(ID3D10Resource* pResource, D3D10_RENDER_TARGET_VIEW_DESC* pDesc, ID3D10RenderTargetView** ppRTView);
    int CreateDepthStencilView(ID3D10Resource* pResource, D3D10_DEPTH_STENCIL_VIEW_DESC* pDesc, ID3D10DepthStencilView** ppDepthStencilView);
    int CreateInputLayout(D3D10_INPUT_ELEMENT_DESC* pInputElementDescs, uint NumElements, void* pShaderBytecodeWithInputSignature, ulong BytecodeLength, ID3D10InputLayout** ppInputLayout);
    int CreateVertexShader(void* pShaderBytecode, ulong BytecodeLength, ID3D10VertexShader** ppVertexShader);
    int CreateGeometryShader(void* pShaderBytecode, ulong BytecodeLength, ID3D10GeometryShader** ppGeometryShader);
    int CreateGeometryShaderWithStreamOutput(void* pShaderBytecode, ulong BytecodeLength, D3D10_SO_DECLARATION_ENTRY* pSODeclaration, uint NumEntries, uint OutputStreamStride, ID3D10GeometryShader** ppGeometryShader);
    int CreatePixelShader(void* pShaderBytecode, ulong BytecodeLength, ID3D10PixelShader** ppPixelShader);
    int CreateBlendState(D3D10_BLEND_DESC* pBlendStateDesc, ID3D10BlendState** ppBlendState);
    int CreateDepthStencilState(D3D10_DEPTH_STENCIL_DESC* pDepthStencilDesc, ID3D10DepthStencilState** ppDepthStencilState);
    int CreateRasterizerState(D3D10_RASTERIZER_DESC* pRasterizerDesc, ID3D10RasterizerState** ppRasterizerState);
    int CreateSamplerState(D3D10_SAMPLER_DESC* pSamplerDesc, ID3D10SamplerState** ppSamplerState);
    int CreateQuery(D3D10_QUERY_DESC* pQueryDesc, ID3D10Query** ppQuery);
    int CreatePredicate(D3D10_QUERY_DESC* pPredicateDesc, ID3D10Predicate** ppPredicate);
    int CreateCounter(D3D10_COUNTER_DESC* pCounterDesc, ID3D10Counter** ppCounter);
    int CheckFormatSupport(DXGI_FORMAT Format, uint* pFormatSupport);
    int CheckMultisampleQualityLevels(DXGI_FORMAT Format, uint SampleCount, uint* pNumQualityLevels);
    void CheckCounterInfo(D3D10_COUNTER_INFO* pCounterInfo);
    int CheckCounter(D3D10_COUNTER_DESC* pDesc, D3D10_COUNTER_TYPE* pType, uint* pActiveCounters, byte* szName, uint* pNameLength, byte* szUnits, uint* pUnitsLength, byte* szDescription, uint* pDescriptionLength);
    uint GetCreationFlags();
    int OpenSharedResource(void* hResource, _GUID* ReturnedInterface, void** ppResource);
    void SetTextFilterSize(uint Width, uint Height);
    void GetTextFilterSize(uint* pWidth, uint* pHeight);
}

// d3d10.h: 6649
interface ID3D10Multithread: IUnknown {
    static immutable iidof = GUID(0x9b7e4e00, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void Enter();
    void Leave();
    int SetMultithreadProtected(int bMTProtect);
    int GetMultithreadProtected();
}

