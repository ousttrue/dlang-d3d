// cpptypeinfo generated: 2019-10-10 20:57:15.668568
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

enum D3D10_FILL_MODE {
    WIREFRAME = 0x00000002,
    SOLID = 0x00000003,
}

enum D3D10_CULL_MODE {
    NONE = 0x00000001,
    FRONT = 0x00000002,
    BACK = 0x00000003,
}

enum D3D10_USAGE {
    DEFAULT = 0x00000000,
    IMMUTABLE = 0x00000001,
    DYNAMIC = 0x00000002,
    STAGING = 0x00000003,
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

enum D3D10_DSV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE1D = 0x00000001,
    TEXTURE1DARRAY = 0x00000002,
    TEXTURE2D = 0x00000003,
    TEXTURE2DARRAY = 0x00000004,
    TEXTURE2DMS = 0x00000005,
    TEXTURE2DMSARRAY = 0x00000006,
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

enum D3D10_TEXTURE_ADDRESS_MODE {
    WRAP = 0x00000001,
    MIRROR = 0x00000002,
    CLAMP = 0x00000003,
    BORDER = 0x00000004,
    MIRROR_ONCE = 0x00000005,
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

interface ID3D10DeviceChild: IUnknown {
    static immutable iidof = GUID(0x9b7e4c00, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDevice(ID3D10Device** GetDevice);
    int GetPrivateData(_GUID* GetPrivateData, uint* GetPrivateData, void* GetPrivateData);
    int SetPrivateData(_GUID* SetPrivateData, uint SetPrivateData, void* SetPrivateData);
    int SetPrivateDataInterface(_GUID* SetPrivateDataInterface, IUnknown* SetPrivateDataInterface);
}

interface ID3D10DepthStencilState: ID3D10DeviceChild {
    static immutable iidof = GUID(0x2b4b1cc8, 0xa4ad, 0x41f8, [0x83, 0x22, 0xca, 0x86, 0xfc, 0x3e, 0xc6, 0x75]);
    void GetDesc(D3D10_DEPTH_STENCIL_DESC* GetDesc);
}

interface ID3D10BlendState: ID3D10DeviceChild {
    static immutable iidof = GUID(0xedad8d19, 0x8a35, 0x4d6d, [0x85, 0x66, 0x2e, 0xa2, 0x76, 0xcd, 0xe1, 0x61]);
    void GetDesc(D3D10_BLEND_DESC* GetDesc);
}

interface ID3D10RasterizerState: ID3D10DeviceChild {
    static immutable iidof = GUID(0xa2a07292, 0x89af, 0x4345, [0xbe, 0x2e, 0xc5, 0x3d, 0x9f, 0xbb, 0x6e, 0x9f]);
    void GetDesc(D3D10_RASTERIZER_DESC* GetDesc);
}

interface ID3D10Resource: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c01, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetType(D3D10_RESOURCE_DIMENSION* GetType);
    void SetEvictionPriority(uint SetEvictionPriority);
    uint GetEvictionPriority();
}

interface ID3D10Buffer: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c02, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(D3D10_MAP Map, uint Map, void** Map);
    void Unmap();
    void GetDesc(D3D10_BUFFER_DESC* GetDesc);
}

interface ID3D10Texture1D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c03, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Map, D3D10_MAP Map, uint Map, void** Map);
    void Unmap(uint Unmap);
    void GetDesc(D3D10_TEXTURE1D_DESC* GetDesc);
}

interface ID3D10Texture2D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c04, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Map, D3D10_MAP Map, uint Map, D3D10_MAPPED_TEXTURE2D* Map);
    void Unmap(uint Unmap);
    void GetDesc(D3D10_TEXTURE2D_DESC* GetDesc);
}

interface ID3D10Texture3D: ID3D10Resource {
    static immutable iidof = GUID(0x9b7e4c05, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    int Map(uint Map, D3D10_MAP Map, uint Map, D3D10_MAPPED_TEXTURE3D* Map);
    void Unmap(uint Unmap);
    void GetDesc(D3D10_TEXTURE3D_DESC* GetDesc);
}

interface ID3D10View: ID3D10DeviceChild {
    static immutable iidof = GUID(0xc902b03f, 0x60a7, 0x49ba, [0x99, 0x36, 0x2a, 0x3a, 0xb3, 0x7a, 0x7e, 0x33]);
    void GetResource(ID3D10Resource** GetResource);
}

interface ID3D10ShaderResourceView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c07, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_SHADER_RESOURCE_VIEW_DESC* GetDesc);
}

interface ID3D10RenderTargetView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c08, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_RENDER_TARGET_VIEW_DESC* GetDesc);
}

interface ID3D10DepthStencilView: ID3D10View {
    static immutable iidof = GUID(0x9b7e4c09, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_DEPTH_STENCIL_VIEW_DESC* GetDesc);
}

interface ID3D10VertexShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0a, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

interface ID3D10GeometryShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x6316be88, 0x54cd, 0x4040, [0xab, 0x44, 0x20, 0x46, 0x1b, 0xc8, 0x1f, 0x68]);
}

interface ID3D10PixelShader: ID3D10DeviceChild {
    static immutable iidof = GUID(0x4968b601, 0x9d00, 0x4cde, [0x83, 0x46, 0x8e, 0x7f, 0x67, 0x58, 0x19, 0xb6]);
}

interface ID3D10InputLayout: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0b, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

interface ID3D10SamplerState: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0c, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_SAMPLER_DESC* GetDesc);
}

interface ID3D10Asynchronous: ID3D10DeviceChild {
    static immutable iidof = GUID(0x9b7e4c0d, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void Begin();
    void End();
    int GetData(void* GetData, uint GetData, uint GetData);
    uint GetDataSize();
}

interface ID3D10Query: ID3D10Asynchronous {
    static immutable iidof = GUID(0x9b7e4c0e, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_QUERY_DESC* GetDesc);
}

interface ID3D10Predicate: ID3D10Query {
    static immutable iidof = GUID(0x9b7e4c10, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
}

interface ID3D10Counter: ID3D10Asynchronous {
    static immutable iidof = GUID(0x9b7e4c11, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void GetDesc(D3D10_COUNTER_DESC* GetDesc);
}

interface ID3D10Device: IUnknown {
    static immutable iidof = GUID(0x9b7e4c0f, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void VSSetConstantBuffers(uint VSSetConstantBuffers, uint VSSetConstantBuffers, ID3D10Buffer** VSSetConstantBuffers);
    void PSSetShaderResources(uint PSSetShaderResources, uint PSSetShaderResources, ID3D10ShaderResourceView** PSSetShaderResources);
    void PSSetShader(ID3D10PixelShader* PSSetShader);
    void PSSetSamplers(uint PSSetSamplers, uint PSSetSamplers, ID3D10SamplerState** PSSetSamplers);
    void VSSetShader(ID3D10VertexShader* VSSetShader);
    void DrawIndexed(uint DrawIndexed, uint DrawIndexed, int DrawIndexed);
    void Draw(uint Draw, uint Draw);
    void PSSetConstantBuffers(uint PSSetConstantBuffers, uint PSSetConstantBuffers, ID3D10Buffer** PSSetConstantBuffers);
    void IASetInputLayout(ID3D10InputLayout* IASetInputLayout);
    void IASetVertexBuffers(uint IASetVertexBuffers, uint IASetVertexBuffers, ID3D10Buffer** IASetVertexBuffers, uint* IASetVertexBuffers, uint* IASetVertexBuffers);
    void IASetIndexBuffer(ID3D10Buffer* IASetIndexBuffer, DXGI_FORMAT IASetIndexBuffer, uint IASetIndexBuffer);
    void DrawIndexedInstanced(uint DrawIndexedInstanced, uint DrawIndexedInstanced, uint DrawIndexedInstanced, int DrawIndexedInstanced, uint DrawIndexedInstanced);
    void DrawInstanced(uint DrawInstanced, uint DrawInstanced, uint DrawInstanced, uint DrawInstanced);
    void GSSetConstantBuffers(uint GSSetConstantBuffers, uint GSSetConstantBuffers, ID3D10Buffer** GSSetConstantBuffers);
    void GSSetShader(ID3D10GeometryShader* GSSetShader);
    void IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY IASetPrimitiveTopology);
    void VSSetShaderResources(uint VSSetShaderResources, uint VSSetShaderResources, ID3D10ShaderResourceView** VSSetShaderResources);
    void VSSetSamplers(uint VSSetSamplers, uint VSSetSamplers, ID3D10SamplerState** VSSetSamplers);
    void SetPredication(ID3D10Predicate* SetPredication, int SetPredication);
    void GSSetShaderResources(uint GSSetShaderResources, uint GSSetShaderResources, ID3D10ShaderResourceView** GSSetShaderResources);
    void GSSetSamplers(uint GSSetSamplers, uint GSSetSamplers, ID3D10SamplerState** GSSetSamplers);
    void OMSetRenderTargets(uint OMSetRenderTargets, ID3D10RenderTargetView** OMSetRenderTargets, ID3D10DepthStencilView* OMSetRenderTargets);
    void OMSetBlendState(ID3D10BlendState* OMSetBlendState, float* OMSetBlendState, uint OMSetBlendState);
    void OMSetDepthStencilState(ID3D10DepthStencilState* OMSetDepthStencilState, uint OMSetDepthStencilState);
    void SOSetTargets(uint SOSetTargets, ID3D10Buffer** SOSetTargets, uint* SOSetTargets);
    void DrawAuto();
    void RSSetState(ID3D10RasterizerState* RSSetState);
    void RSSetViewports(uint RSSetViewports, D3D10_VIEWPORT* RSSetViewports);
    void RSSetScissorRects(uint RSSetScissorRects, tagRECT* RSSetScissorRects);
    void CopySubresourceRegion(ID3D10Resource* CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, ID3D10Resource* CopySubresourceRegion, uint CopySubresourceRegion, D3D10_BOX* CopySubresourceRegion);
    void CopyResource(ID3D10Resource* CopyResource, ID3D10Resource* CopyResource);
    void UpdateSubresource(ID3D10Resource* UpdateSubresource, uint UpdateSubresource, D3D10_BOX* UpdateSubresource, void* UpdateSubresource, uint UpdateSubresource, uint UpdateSubresource);
    void ClearRenderTargetView(ID3D10RenderTargetView* ClearRenderTargetView, float* ClearRenderTargetView);
    void ClearDepthStencilView(ID3D10DepthStencilView* ClearDepthStencilView, uint ClearDepthStencilView, float ClearDepthStencilView, ubyte ClearDepthStencilView);
    void GenerateMips(ID3D10ShaderResourceView* GenerateMips);
    void ResolveSubresource(ID3D10Resource* ResolveSubresource, uint ResolveSubresource, ID3D10Resource* ResolveSubresource, uint ResolveSubresource, DXGI_FORMAT ResolveSubresource);
    void VSGetConstantBuffers(uint VSGetConstantBuffers, uint VSGetConstantBuffers, ID3D10Buffer** VSGetConstantBuffers);
    void PSGetShaderResources(uint PSGetShaderResources, uint PSGetShaderResources, ID3D10ShaderResourceView** PSGetShaderResources);
    void PSGetShader(ID3D10PixelShader** PSGetShader);
    void PSGetSamplers(uint PSGetSamplers, uint PSGetSamplers, ID3D10SamplerState** PSGetSamplers);
    void VSGetShader(ID3D10VertexShader** VSGetShader);
    void PSGetConstantBuffers(uint PSGetConstantBuffers, uint PSGetConstantBuffers, ID3D10Buffer** PSGetConstantBuffers);
    void IAGetInputLayout(ID3D10InputLayout** IAGetInputLayout);
    void IAGetVertexBuffers(uint IAGetVertexBuffers, uint IAGetVertexBuffers, ID3D10Buffer** IAGetVertexBuffers, uint* IAGetVertexBuffers, uint* IAGetVertexBuffers);
    void IAGetIndexBuffer(ID3D10Buffer** IAGetIndexBuffer, DXGI_FORMAT* IAGetIndexBuffer, uint* IAGetIndexBuffer);
    void GSGetConstantBuffers(uint GSGetConstantBuffers, uint GSGetConstantBuffers, ID3D10Buffer** GSGetConstantBuffers);
    void GSGetShader(ID3D10GeometryShader** GSGetShader);
    void IAGetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY* IAGetPrimitiveTopology);
    void VSGetShaderResources(uint VSGetShaderResources, uint VSGetShaderResources, ID3D10ShaderResourceView** VSGetShaderResources);
    void VSGetSamplers(uint VSGetSamplers, uint VSGetSamplers, ID3D10SamplerState** VSGetSamplers);
    void GetPredication(ID3D10Predicate** GetPredication, int* GetPredication);
    void GSGetShaderResources(uint GSGetShaderResources, uint GSGetShaderResources, ID3D10ShaderResourceView** GSGetShaderResources);
    void GSGetSamplers(uint GSGetSamplers, uint GSGetSamplers, ID3D10SamplerState** GSGetSamplers);
    void OMGetRenderTargets(uint OMGetRenderTargets, ID3D10RenderTargetView** OMGetRenderTargets, ID3D10DepthStencilView** OMGetRenderTargets);
    void OMGetBlendState(ID3D10BlendState** OMGetBlendState, float* OMGetBlendState, uint* OMGetBlendState);
    void OMGetDepthStencilState(ID3D10DepthStencilState** OMGetDepthStencilState, uint* OMGetDepthStencilState);
    void SOGetTargets(uint SOGetTargets, ID3D10Buffer** SOGetTargets, uint* SOGetTargets);
    void RSGetState(ID3D10RasterizerState** RSGetState);
    void RSGetViewports(uint* RSGetViewports, D3D10_VIEWPORT* RSGetViewports);
    void RSGetScissorRects(uint* RSGetScissorRects, tagRECT* RSGetScissorRects);
    int GetDeviceRemovedReason();
    int SetExceptionMode(uint SetExceptionMode);
    uint GetExceptionMode();
    int GetPrivateData(_GUID* GetPrivateData, uint* GetPrivateData, void* GetPrivateData);
    int SetPrivateData(_GUID* SetPrivateData, uint SetPrivateData, void* SetPrivateData);
    int SetPrivateDataInterface(_GUID* SetPrivateDataInterface, IUnknown* SetPrivateDataInterface);
    void ClearState();
    void Flush();
    int CreateBuffer(D3D10_BUFFER_DESC* CreateBuffer, D3D10_SUBRESOURCE_DATA* CreateBuffer, ID3D10Buffer** CreateBuffer);
    int CreateTexture1D(D3D10_TEXTURE1D_DESC* CreateTexture1D, D3D10_SUBRESOURCE_DATA* CreateTexture1D, ID3D10Texture1D** CreateTexture1D);
    int CreateTexture2D(D3D10_TEXTURE2D_DESC* CreateTexture2D, D3D10_SUBRESOURCE_DATA* CreateTexture2D, ID3D10Texture2D** CreateTexture2D);
    int CreateTexture3D(D3D10_TEXTURE3D_DESC* CreateTexture3D, D3D10_SUBRESOURCE_DATA* CreateTexture3D, ID3D10Texture3D** CreateTexture3D);
    int CreateShaderResourceView(ID3D10Resource* CreateShaderResourceView, D3D10_SHADER_RESOURCE_VIEW_DESC* CreateShaderResourceView, ID3D10ShaderResourceView** CreateShaderResourceView);
    int CreateRenderTargetView(ID3D10Resource* CreateRenderTargetView, D3D10_RENDER_TARGET_VIEW_DESC* CreateRenderTargetView, ID3D10RenderTargetView** CreateRenderTargetView);
    int CreateDepthStencilView(ID3D10Resource* CreateDepthStencilView, D3D10_DEPTH_STENCIL_VIEW_DESC* CreateDepthStencilView, ID3D10DepthStencilView** CreateDepthStencilView);
    int CreateInputLayout(D3D10_INPUT_ELEMENT_DESC* CreateInputLayout, uint CreateInputLayout, void* CreateInputLayout, ulong CreateInputLayout, ID3D10InputLayout** CreateInputLayout);
    int CreateVertexShader(void* CreateVertexShader, ulong CreateVertexShader, ID3D10VertexShader** CreateVertexShader);
    int CreateGeometryShader(void* CreateGeometryShader, ulong CreateGeometryShader, ID3D10GeometryShader** CreateGeometryShader);
    int CreateGeometryShaderWithStreamOutput(void* CreateGeometryShaderWithStreamOutput, ulong CreateGeometryShaderWithStreamOutput, D3D10_SO_DECLARATION_ENTRY* CreateGeometryShaderWithStreamOutput, uint CreateGeometryShaderWithStreamOutput, uint CreateGeometryShaderWithStreamOutput, ID3D10GeometryShader** CreateGeometryShaderWithStreamOutput);
    int CreatePixelShader(void* CreatePixelShader, ulong CreatePixelShader, ID3D10PixelShader** CreatePixelShader);
    int CreateBlendState(D3D10_BLEND_DESC* CreateBlendState, ID3D10BlendState** CreateBlendState);
    int CreateDepthStencilState(D3D10_DEPTH_STENCIL_DESC* CreateDepthStencilState, ID3D10DepthStencilState** CreateDepthStencilState);
    int CreateRasterizerState(D3D10_RASTERIZER_DESC* CreateRasterizerState, ID3D10RasterizerState** CreateRasterizerState);
    int CreateSamplerState(D3D10_SAMPLER_DESC* CreateSamplerState, ID3D10SamplerState** CreateSamplerState);
    int CreateQuery(D3D10_QUERY_DESC* CreateQuery, ID3D10Query** CreateQuery);
    int CreatePredicate(D3D10_QUERY_DESC* CreatePredicate, ID3D10Predicate** CreatePredicate);
    int CreateCounter(D3D10_COUNTER_DESC* CreateCounter, ID3D10Counter** CreateCounter);
    int CheckFormatSupport(DXGI_FORMAT CheckFormatSupport, uint* CheckFormatSupport);
    int CheckMultisampleQualityLevels(DXGI_FORMAT CheckMultisampleQualityLevels, uint CheckMultisampleQualityLevels, uint* CheckMultisampleQualityLevels);
    void CheckCounterInfo(D3D10_COUNTER_INFO* CheckCounterInfo);
    int CheckCounter(D3D10_COUNTER_DESC* CheckCounter, D3D10_COUNTER_TYPE* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter);
    uint GetCreationFlags();
    int OpenSharedResource(void* OpenSharedResource, _GUID* OpenSharedResource, void** OpenSharedResource);
    void SetTextFilterSize(uint SetTextFilterSize, uint SetTextFilterSize);
    void GetTextFilterSize(uint* GetTextFilterSize, uint* GetTextFilterSize);
}

interface ID3D10Multithread: IUnknown {
    static immutable iidof = GUID(0x9b7e4e00, 0x342c, 0x4106, [0xa1, 0x9f, 0x4f, 0x27, 0x04, 0xf6, 0x89, 0xf0]);
    void Enter();
    void Leave();
    int SetMultithreadProtected(int SetMultithreadProtected);
    int GetMultithreadProtected();
}

