// cpptypeinfo generated: 2019-10-10 20:57:15.641640
module windowskits.d3d11;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;
import windowskits.unknwnbase;
import windowskits.dxgiformat;
import windowskits.d3dcommon;
import windowskits.windef;
import windowskits.dxgicommon;

enum D3D11_RESOURCE_DIMENSION {
    UNKNOWN = 0x00000000,
    BUFFER = 0x00000001,
    TEXTURE1D = 0x00000002,
    TEXTURE2D = 0x00000003,
    TEXTURE3D = 0x00000004,
}

enum D3D11_MAP {
    READ = 0x00000001,
    WRITE = 0x00000002,
    READ_WRITE = 0x00000003,
    WRITE_DISCARD = 0x00000004,
    WRITE_NO_OVERWRITE = 0x00000005,
}

enum D3D11_DEVICE_CONTEXT_TYPE {
    D3D11_DEVICE_CONTEXT_IMMEDIATE = 0x00000000,
    D3D11_DEVICE_CONTEXT_DEFERRED = 0x00000001,
}

enum D3D11_VIDEO_PROCESSOR_FILTER {
    BRIGHTNESS = 0x00000000,
    CONTRAST = 0x00000001,
    HUE = 0x00000002,
    SATURATION = 0x00000003,
    NOISE_REDUCTION = 0x00000004,
    EDGE_ENHANCEMENT = 0x00000005,
    ANAMORPHIC_SCALING = 0x00000006,
    STEREO_ADJUSTMENT = 0x00000007,
}

enum D3D11_VIDEO_DECODER_BUFFER_TYPE {
    D3D11_VIDEO_DECODER_BUFFER_PICTURE_PARAMETERS = 0x00000000,
    D3D11_VIDEO_DECODER_BUFFER_MACROBLOCK_CONTROL = 0x00000001,
    D3D11_VIDEO_DECODER_BUFFER_RESIDUAL_DIFFERENCE = 0x00000002,
    D3D11_VIDEO_DECODER_BUFFER_DEBLOCKING_CONTROL = 0x00000003,
    D3D11_VIDEO_DECODER_BUFFER_INVERSE_QUANTIZATION_MATRIX = 0x00000004,
    D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL = 0x00000005,
    D3D11_VIDEO_DECODER_BUFFER_BITSTREAM = 0x00000006,
    D3D11_VIDEO_DECODER_BUFFER_MOTION_VECTOR = 0x00000007,
    D3D11_VIDEO_DECODER_BUFFER_FILM_GRAIN = 0x00000008,
}

enum D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE {
    OPAQUE = 0x00000000,
    BACKGROUND = 0x00000001,
    DESTINATION = 0x00000002,
    SOURCE_STREAM = 0x00000003,
}

enum D3D11_VIDEO_FRAME_FORMAT {
    PROGRESSIVE = 0x00000000,
    INTERLACED_TOP_FIELD_FIRST = 0x00000001,
    INTERLACED_BOTTOM_FIELD_FIRST = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_OUTPUT_RATE {
    NORMAL = 0x00000000,
    HALF = 0x00000001,
    CUSTOM = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_STEREO_FORMAT {
    MONO = 0x00000000,
    HORIZONTAL = 0x00000001,
    VERTICAL = 0x00000002,
    SEPARATE = 0x00000003,
    MONO_OFFSET = 0x00000004,
    ROW_INTERLEAVED = 0x00000005,
    COLUMN_INTERLEAVED = 0x00000006,
    CHECKERBOARD = 0x00000007,
}

enum D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE {
    NONE = 0x00000000,
    FRAME0 = 0x00000001,
    FRAME1 = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_ROTATION {
    IDENTITY = 0x00000000,
    _90 = 0x00000001,
    _180 = 0x00000002,
    _270 = 0x00000003,
}

enum D3D11_AUTHENTICATED_CHANNEL_TYPE {
    D3D11_AUTHENTICATED_CHANNEL_D3D11 = 0x00000001,
    D3D11_AUTHENTICATED_CHANNEL_DRIVER_SOFTWARE = 0x00000002,
    D3D11_AUTHENTICATED_CHANNEL_DRIVER_HARDWARE = 0x00000003,
}

enum D3D11_COUNTER_TYPE {
    FLOAT32 = 0x00000000,
    UINT16 = 0x00000001,
    UINT32 = 0x00000002,
    UINT64 = 0x00000003,
}

enum D3D11_FEATURE {
    THREADING = 0x00000000,
    DOUBLES = 0x00000001,
    FORMAT_SUPPORT = 0x00000002,
    FORMAT_SUPPORT2 = 0x00000003,
    D3D10_X_HARDWARE_OPTIONS = 0x00000004,
    D3D11_OPTIONS = 0x00000005,
    ARCHITECTURE_INFO = 0x00000006,
    D3D9_OPTIONS = 0x00000007,
    SHADER_MIN_PRECISION_SUPPORT = 0x00000008,
    D3D9_SHADOW_SUPPORT = 0x00000009,
    D3D11_OPTIONS1 = 0x0000000a,
    D3D9_SIMPLE_INSTANCING_SUPPORT = 0x0000000b,
    MARKER_SUPPORT = 0x0000000c,
    D3D9_OPTIONS1 = 0x0000000d,
    D3D11_OPTIONS2 = 0x0000000e,
    D3D11_OPTIONS3 = 0x0000000f,
    GPU_VIRTUAL_ADDRESS_SUPPORT = 0x00000010,
    D3D11_OPTIONS4 = 0x00000011,
    SHADER_CACHE = 0x00000012,
    D3D11_OPTIONS5 = 0x00000013,
}

enum D3D11_INPUT_CLASSIFICATION {
    D3D11_INPUT_PER_VERTEX_DATA = 0x00000000,
    D3D11_INPUT_PER_INSTANCE_DATA = 0x00000001,
}

enum D3D11_STENCIL_OP {
    KEEP = 0x00000001,
    ZERO = 0x00000002,
    REPLACE = 0x00000003,
    INCR_SAT = 0x00000004,
    DECR_SAT = 0x00000005,
    INVERT = 0x00000006,
    INCR = 0x00000007,
    DECR = 0x00000008,
}

enum D3D11_COMPARISON_FUNC {
    D3D11_COMPARISON_NEVER = 0x00000001,
    D3D11_COMPARISON_LESS = 0x00000002,
    D3D11_COMPARISON_EQUAL = 0x00000003,
    D3D11_COMPARISON_LESS_EQUAL = 0x00000004,
    D3D11_COMPARISON_GREATER = 0x00000005,
    D3D11_COMPARISON_NOT_EQUAL = 0x00000006,
    D3D11_COMPARISON_GREATER_EQUAL = 0x00000007,
    D3D11_COMPARISON_ALWAYS = 0x00000008,
}

enum D3D11_DEPTH_WRITE_MASK {
    ZERO = 0x00000000,
    ALL = 0x00000001,
}

enum D3D11_BLEND {
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

enum D3D11_BLEND_OP {
    ADD = 0x00000001,
    SUBTRACT = 0x00000002,
    REV_SUBTRACT = 0x00000003,
    MIN = 0x00000004,
    MAX = 0x00000005,
}

enum D3D11_FILL_MODE {
    WIREFRAME = 0x00000002,
    SOLID = 0x00000003,
}

enum D3D11_CULL_MODE {
    NONE = 0x00000001,
    FRONT = 0x00000002,
    BACK = 0x00000003,
}

enum D3D11_USAGE {
    DEFAULT = 0x00000000,
    IMMUTABLE = 0x00000001,
    DYNAMIC = 0x00000002,
    STAGING = 0x00000003,
}

enum D3D11_RTV_DIMENSION {
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

enum D3D11_DSV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE1D = 0x00000001,
    TEXTURE1DARRAY = 0x00000002,
    TEXTURE2D = 0x00000003,
    TEXTURE2DARRAY = 0x00000004,
    TEXTURE2DMS = 0x00000005,
    TEXTURE2DMSARRAY = 0x00000006,
}

enum D3D11_UAV_DIMENSION {
    UNKNOWN = 0x00000000,
    BUFFER = 0x00000001,
    TEXTURE1D = 0x00000002,
    TEXTURE1DARRAY = 0x00000003,
    TEXTURE2D = 0x00000004,
    TEXTURE2DARRAY = 0x00000005,
    TEXTURE3D = 0x00000008,
}

enum D3D11_FILTER {
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
    MINIMUM_MIN_MAG_MIP_POINT = 0x00000100,
    MINIMUM_MIN_MAG_POINT_MIP_LINEAR = 0x00000101,
    MINIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT = 0x00000104,
    MINIMUM_MIN_POINT_MAG_MIP_LINEAR = 0x00000105,
    MINIMUM_MIN_LINEAR_MAG_MIP_POINT = 0x00000110,
    MINIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x00000111,
    MINIMUM_MIN_MAG_LINEAR_MIP_POINT = 0x00000114,
    MINIMUM_MIN_MAG_MIP_LINEAR = 0x00000115,
    MINIMUM_ANISOTROPIC = 0x00000155,
    MAXIMUM_MIN_MAG_MIP_POINT = 0x00000180,
    MAXIMUM_MIN_MAG_POINT_MIP_LINEAR = 0x00000181,
    MAXIMUM_MIN_POINT_MAG_LINEAR_MIP_POINT = 0x00000184,
    MAXIMUM_MIN_POINT_MAG_MIP_LINEAR = 0x00000185,
    MAXIMUM_MIN_LINEAR_MAG_MIP_POINT = 0x00000190,
    MAXIMUM_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x00000191,
    MAXIMUM_MIN_MAG_LINEAR_MIP_POINT = 0x00000194,
    MAXIMUM_MIN_MAG_MIP_LINEAR = 0x00000195,
    MAXIMUM_ANISOTROPIC = 0x000001d5,
}

enum D3D11_TEXTURE_ADDRESS_MODE {
    WRAP = 0x00000001,
    MIRROR = 0x00000002,
    CLAMP = 0x00000003,
    BORDER = 0x00000004,
    MIRROR_ONCE = 0x00000005,
}

enum D3D11_QUERY {
    EVENT = 0x00000000,
    OCCLUSION = 0x00000001,
    TIMESTAMP = 0x00000002,
    TIMESTAMP_DISJOINT = 0x00000003,
    PIPELINE_STATISTICS = 0x00000004,
    OCCLUSION_PREDICATE = 0x00000005,
    SO_STATISTICS = 0x00000006,
    SO_OVERFLOW_PREDICATE = 0x00000007,
    SO_STATISTICS_STREAM0 = 0x00000008,
    SO_OVERFLOW_PREDICATE_STREAM0 = 0x00000009,
    SO_STATISTICS_STREAM1 = 0x0000000a,
    SO_OVERFLOW_PREDICATE_STREAM1 = 0x0000000b,
    SO_STATISTICS_STREAM2 = 0x0000000c,
    SO_OVERFLOW_PREDICATE_STREAM2 = 0x0000000d,
    SO_STATISTICS_STREAM3 = 0x0000000e,
    SO_OVERFLOW_PREDICATE_STREAM3 = 0x0000000f,
}

enum D3D11_COUNTER {
    DEVICE_DEPENDENT_0 = 0x40000000,
}

enum D3D11_TILED_RESOURCES_TIER {
    D3D11_TILED_RESOURCES_NOT_SUPPORTED = 0x00000000,
    _1 = 0x00000001,
    _2 = 0x00000002,
    _3 = 0x00000003,
}

enum D3D11_CONSERVATIVE_RASTERIZATION_TIER {
    D3D11_CONSERVATIVE_RASTERIZATION_NOT_SUPPORTED = 0x00000000,
    _1 = 0x00000001,
    _2 = 0x00000002,
    _3 = 0x00000003,
}

enum D3D11_SHARED_RESOURCE_TIER {
    _0 = 0x00000000,
    _1 = 0x00000001,
    _2 = 0x00000002,
}

enum D3D11_VIDEO_USAGE {
    PLAYBACK_NORMAL = 0x00000000,
    OPTIMAL_SPEED = 0x00000001,
    OPTIMAL_QUALITY = 0x00000002,
}

enum D3D11_AUTHENTICATED_PROCESS_IDENTIFIER_TYPE {
    D3D11_PROCESSIDTYPE_UNKNOWN = 0x00000000,
    D3D11_PROCESSIDTYPE_DWM = 0x00000001,
    D3D11_PROCESSIDTYPE_HANDLE = 0x00000002,
}

enum D3D11_BUS_TYPE {
    OTHER = 0x00000000,
    PCI = 0x00000001,
    PCIX = 0x00000002,
    PCIEXPRESS = 0x00000003,
    AGP = 0x00000004,
    D3D11_BUS_IMPL_MODIFIER_INSIDE_OF_CHIPSET = 0x00010000,
    D3D11_BUS_IMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP = 0x00020000,
    D3D11_BUS_IMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET = 0x00030000,
    D3D11_BUS_IMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR = 0x00040000,
    D3D11_BUS_IMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE = 0x00050000,
    D3D11_BUS_IMPL_MODIFIER_NON_STANDARD = -0x80000000,
}

enum D3D11_VDOV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE2D = 0x00000001,
}

enum D3D11_VPIV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE2D = 0x00000001,
}

enum D3D11_VPOV_DIMENSION {
    UNKNOWN = 0x00000000,
    TEXTURE2D = 0x00000001,
    TEXTURE2DARRAY = 0x00000002,
}

struct D3D11_DEPTH_STENCIL_DESC{
    int DepthEnable;
    D3D11_DEPTH_WRITE_MASK DepthWriteMask;
    D3D11_COMPARISON_FUNC DepthFunc;
    int StencilEnable;
    ubyte StencilReadMask;
    ubyte StencilWriteMask;
    D3D11_DEPTH_STENCILOP_DESC FrontFace;
    D3D11_DEPTH_STENCILOP_DESC BackFace;
}

struct D3D11_BLEND_DESC{
    int AlphaToCoverageEnable;
    int IndependentBlendEnable;
    D3D11_RENDER_TARGET_BLEND_DESC* RenderTarget;
}

struct D3D11_RASTERIZER_DESC{
    D3D11_FILL_MODE FillMode;
    D3D11_CULL_MODE CullMode;
    int FrontCounterClockwise;
    int DepthBias;
    float DepthBiasClamp;
    float SlopeScaledDepthBias;
    int DepthClipEnable;
    int ScissorEnable;
    int MultisampleEnable;
    int AntialiasedLineEnable;
}

struct D3D11_BUFFER_DESC{
    uint ByteWidth;
    D3D11_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
    uint StructureByteStride;
}

struct D3D11_TEXTURE1D_DESC{
    uint Width;
    uint MipLevels;
    uint ArraySize;
    DXGI_FORMAT Format;
    D3D11_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D11_TEXTURE2D_DESC{
    uint Width;
    uint Height;
    uint MipLevels;
    uint ArraySize;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
    D3D11_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D11_TEXTURE3D_DESC{
    uint Width;
    uint Height;
    uint Depth;
    uint MipLevels;
    DXGI_FORMAT Format;
    D3D11_USAGE Usage;
    uint BindFlags;
    uint CPUAccessFlags;
    uint MiscFlags;
}

struct D3D11_SHADER_RESOURCE_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D_SRV_DIMENSION ViewDimension;
    union {
D3D11_BUFFER_SRV Buffer;
D3D11_TEX1D_SRV Texture1D;
D3D11_TEX1D_ARRAY_SRV Texture1DArray;
D3D11_TEX2D_SRV Texture2D;
D3D11_TEX2D_ARRAY_SRV Texture2DArray;
D3D11_TEX2DMS_SRV Texture2DMS;
D3D11_TEX2DMS_ARRAY_SRV Texture2DMSArray;
D3D11_TEX3D_SRV Texture3D;
D3D11_TEXCUBE_SRV TextureCube;
D3D11_TEXCUBE_ARRAY_SRV TextureCubeArray;
D3D11_BUFFEREX_SRV BufferEx;
} ;
}

struct D3D11_RENDER_TARGET_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D11_RTV_DIMENSION ViewDimension;
    union {
D3D11_BUFFER_RTV Buffer;
D3D11_TEX1D_RTV Texture1D;
D3D11_TEX1D_ARRAY_RTV Texture1DArray;
D3D11_TEX2D_RTV Texture2D;
D3D11_TEX2D_ARRAY_RTV Texture2DArray;
D3D11_TEX2DMS_RTV Texture2DMS;
D3D11_TEX2DMS_ARRAY_RTV Texture2DMSArray;
D3D11_TEX3D_RTV Texture3D;
} ;
}

struct D3D11_DEPTH_STENCIL_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D11_DSV_DIMENSION ViewDimension;
    uint Flags;
    union {
D3D11_TEX1D_DSV Texture1D;
D3D11_TEX1D_ARRAY_DSV Texture1DArray;
D3D11_TEX2D_DSV Texture2D;
D3D11_TEX2D_ARRAY_DSV Texture2DArray;
D3D11_TEX2DMS_DSV Texture2DMS;
D3D11_TEX2DMS_ARRAY_DSV Texture2DMSArray;
} ;
}

struct D3D11_UNORDERED_ACCESS_VIEW_DESC{
    DXGI_FORMAT Format;
    D3D11_UAV_DIMENSION ViewDimension;
    union {
D3D11_BUFFER_UAV Buffer;
D3D11_TEX1D_UAV Texture1D;
D3D11_TEX1D_ARRAY_UAV Texture1DArray;
D3D11_TEX2D_UAV Texture2D;
D3D11_TEX2D_ARRAY_UAV Texture2DArray;
D3D11_TEX3D_UAV Texture3D;
} ;
}

struct D3D11_SAMPLER_DESC{
    D3D11_FILTER Filter;
    D3D11_TEXTURE_ADDRESS_MODE AddressU;
    D3D11_TEXTURE_ADDRESS_MODE AddressV;
    D3D11_TEXTURE_ADDRESS_MODE AddressW;
    float MipLODBias;
    uint MaxAnisotropy;
    D3D11_COMPARISON_FUNC ComparisonFunc;
    float* BorderColor;
    float MinLOD;
    float MaxLOD;
}

struct D3D11_QUERY_DESC{
    D3D11_QUERY Query;
    uint MiscFlags;
}

struct D3D11_COUNTER_DESC{
    D3D11_COUNTER Counter;
    uint MiscFlags;
}

struct D3D11_CLASS_INSTANCE_DESC{
    uint InstanceId;
    uint InstanceIndex;
    uint TypeId;
    uint ConstantBuffer;
    uint BaseConstantBufferOffset;
    uint BaseTexture;
    uint BaseSampler;
    int Created;
}

struct D3D11_MAPPED_SUBRESOURCE{
    void* pData;
    uint RowPitch;
    uint DepthPitch;
}

struct D3D11_VIEWPORT{
    float TopLeftX;
    float TopLeftY;
    float Width;
    float Height;
    float MinDepth;
    float MaxDepth;
}

struct D3D11_BOX{
    uint left;
    uint top;
    uint front;
    uint right;
    uint bottom;
    uint back;
}

struct D3D11_VIDEO_DECODER_DESC{
    _GUID Guid;
    uint SampleWidth;
    uint SampleHeight;
    DXGI_FORMAT OutputFormat;
}

struct D3D11_VIDEO_DECODER_CONFIG{
    _GUID guidConfigBitstreamEncryption;
    _GUID guidConfigMBcontrolEncryption;
    _GUID guidConfigResidDiffEncryption;
    uint ConfigBitstreamRaw;
    uint ConfigMBcontrolRasterOrder;
    uint ConfigResidDiffHost;
    uint ConfigSpatialResid8;
    uint ConfigResid8Subtraction;
    uint ConfigSpatialHost8or9Clipping;
    uint ConfigSpatialResidInterleaved;
    uint ConfigIntraResidUnsigned;
    uint ConfigResidDiffAccelerator;
    uint ConfigHostInverseScan;
    uint ConfigSpecificIDCT;
    uint Config4GroupedCoefs;
    ushort ConfigMinRenderTargetBuffCount;
    ushort ConfigDecoderSpecific;
}

struct D3D11_VIDEO_PROCESSOR_CONTENT_DESC{
    D3D11_VIDEO_FRAME_FORMAT InputFrameFormat;
    DXGI_RATIONAL InputFrameRate;
    uint InputWidth;
    uint InputHeight;
    DXGI_RATIONAL OutputFrameRate;
    uint OutputWidth;
    uint OutputHeight;
    D3D11_VIDEO_USAGE Usage;
}

struct D3D11_VIDEO_PROCESSOR_CAPS{
    uint DeviceCaps;
    uint FeatureCaps;
    uint FilterCaps;
    uint InputFormatCaps;
    uint AutoStreamCaps;
    uint StereoCaps;
    uint RateConversionCapsCount;
    uint MaxInputStreams;
    uint MaxStreamStates;
}

struct D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS{
    uint PastFrames;
    uint FutureFrames;
    uint ProcessorCaps;
    uint ITelecineCaps;
    uint CustomRateCount;
}

struct D3D11_VIDEO_PROCESSOR_CUSTOM_RATE{
    DXGI_RATIONAL CustomRate;
    uint OutputFrames;
    int InputInterlaced;
    uint InputFramesOrFields;
}

struct D3D11_VIDEO_PROCESSOR_FILTER_RANGE{
    int Minimum;
    int Maximum;
    int Default;
    float Multiplier;
}

struct D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC{
    _GUID DecodeProfile;
    D3D11_VDOV_DIMENSION ViewDimension;
    union {
D3D11_TEX2D_VDOV Texture2D;
} ;
}

struct D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC{
    uint FourCC;
    D3D11_VPIV_DIMENSION ViewDimension;
    union {
D3D11_TEX2D_VPIV Texture2D;
} ;
}

struct D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC{
    D3D11_VPOV_DIMENSION ViewDimension;
    union {
D3D11_TEX2D_VPOV Texture2D;
D3D11_TEX2D_ARRAY_VPOV Texture2DArray;
} ;
}

struct D3D11_VIDEO_DECODER_BUFFER_DESC{
    D3D11_VIDEO_DECODER_BUFFER_TYPE BufferType;
    uint BufferIndex;
    uint DataOffset;
    uint DataSize;
    uint FirstMBaddress;
    uint NumMBsInBuffer;
    uint Width;
    uint Height;
    uint Stride;
    uint ReservedBits;
    void* pIV;
    uint IVSize;
    int PartialEncryption;
    D3D11_ENCRYPTED_BLOCK_INFO EncryptedBlockInfo;
}

struct D3D11_VIDEO_DECODER_EXTENSION{
    uint Function;
    void* pPrivateInputData;
    uint PrivateInputDataSize;
    void* pPrivateOutputData;
    uint PrivateOutputDataSize;
    uint ResourceCount;
    ID3D11Resource** ppResourceList;
}

struct D3D11_VIDEO_COLOR{
    union {
D3D11_VIDEO_COLOR_YCbCrA YCbCr;
D3D11_VIDEO_COLOR_RGBA RGBA;
} ;
}

struct D3D11_VIDEO_PROCESSOR_COLOR_SPACE{
    uint Usage;
    uint RGB_Range;
    uint YCbCr_Matrix;
    uint YCbCr_xvYCC;
    uint Nominal_Range;
    uint Reserved;
}

struct D3D11_VIDEO_PROCESSOR_STREAM{
    int Enable;
    uint OutputIndex;
    uint InputFrameOrField;
    uint PastFrames;
    uint FutureFrames;
    ID3D11VideoProcessorInputView** ppPastSurfaces;
    ID3D11VideoProcessorInputView* pInputSurface;
    ID3D11VideoProcessorInputView** ppFutureSurfaces;
    ID3D11VideoProcessorInputView** ppPastSurfacesRight;
    ID3D11VideoProcessorInputView* pInputSurfaceRight;
    ID3D11VideoProcessorInputView** ppFutureSurfacesRight;
}

struct D3D11_ENCRYPTED_BLOCK_INFO{
    uint NumEncryptedBytesAtBeginning;
    uint NumBytesInSkipPattern;
    uint NumBytesInEncryptPattern;
}

struct D3D11_AUTHENTICATED_CONFIGURE_OUTPUT{
    D3D11_OMAC omac;
    _GUID ConfigureType;
    void* hChannel;
    uint SequenceNumber;
    int ReturnCode;
}

struct D3D11_VIDEO_CONTENT_PROTECTION_CAPS{
    uint Caps;
    uint KeyExchangeTypeCount;
    uint BlockAlignmentSize;
    ulong ProtectedMemorySize;
}

struct D3D11_SUBRESOURCE_DATA{
    void* pSysMem;
    uint SysMemPitch;
    uint SysMemSlicePitch;
}

struct D3D11_INPUT_ELEMENT_DESC{
    byte* SemanticName;
    uint SemanticIndex;
    DXGI_FORMAT Format;
    uint InputSlot;
    uint AlignedByteOffset;
    D3D11_INPUT_CLASSIFICATION InputSlotClass;
    uint InstanceDataStepRate;
}

struct D3D11_SO_DECLARATION_ENTRY{
    uint Stream;
    byte* SemanticName;
    uint SemanticIndex;
    ubyte StartComponent;
    ubyte ComponentCount;
    ubyte OutputSlot;
}

struct D3D11_COUNTER_INFO{
    D3D11_COUNTER LastDeviceDependentCounter;
    uint NumSimultaneousCounters;
    ubyte NumDetectableParallelUnits;
}

struct D3D11_DEPTH_STENCILOP_DESC{
    D3D11_STENCIL_OP StencilFailOp;
    D3D11_STENCIL_OP StencilDepthFailOp;
    D3D11_STENCIL_OP StencilPassOp;
    D3D11_COMPARISON_FUNC StencilFunc;
}

struct D3D11_RENDER_TARGET_BLEND_DESC{
    int BlendEnable;
    D3D11_BLEND SrcBlend;
    D3D11_BLEND DestBlend;
    D3D11_BLEND_OP BlendOp;
    D3D11_BLEND SrcBlendAlpha;
    D3D11_BLEND DestBlendAlpha;
    D3D11_BLEND_OP BlendOpAlpha;
    ubyte RenderTargetWriteMask;
}

struct D3D11_BUFFER_SRV{
    union {
uint FirstElement;
uint ElementOffset;
} ;
    union {
uint NumElements;
uint ElementWidth;
} ;
}

struct D3D11_TEX1D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D11_TEX1D_ARRAY_SRV{
    uint MostDetailedMip;
    uint MipLevels;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D11_TEX2D_ARRAY_SRV{
    uint MostDetailedMip;
    uint MipLevels;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2DMS_SRV{
    uint UnusedField_NothingToDefine;
}

struct D3D11_TEX2DMS_ARRAY_SRV{
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX3D_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D11_TEXCUBE_SRV{
    uint MostDetailedMip;
    uint MipLevels;
}

struct D3D11_TEXCUBE_ARRAY_SRV{
    uint MostDetailedMip;
    uint MipLevels;
    uint First2DArrayFace;
    uint NumCubes;
}

struct D3D11_BUFFEREX_SRV{
    uint FirstElement;
    uint NumElements;
    uint Flags;
}

struct D3D11_BUFFER_RTV{
    union {
uint FirstElement;
uint ElementOffset;
} ;
    union {
uint NumElements;
uint ElementWidth;
} ;
}

struct D3D11_TEX1D_RTV{
    uint MipSlice;
}

struct D3D11_TEX1D_ARRAY_RTV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2D_RTV{
    uint MipSlice;
}

struct D3D11_TEX2D_ARRAY_RTV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2DMS_RTV{
    uint UnusedField_NothingToDefine;
}

struct D3D11_TEX2DMS_ARRAY_RTV{
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX3D_RTV{
    uint MipSlice;
    uint FirstWSlice;
    uint WSize;
}

struct D3D11_TEX1D_DSV{
    uint MipSlice;
}

struct D3D11_TEX1D_ARRAY_DSV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2D_DSV{
    uint MipSlice;
}

struct D3D11_TEX2D_ARRAY_DSV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2DMS_DSV{
    uint UnusedField_NothingToDefine;
}

struct D3D11_TEX2DMS_ARRAY_DSV{
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_BUFFER_UAV{
    uint FirstElement;
    uint NumElements;
    uint Flags;
}

struct D3D11_TEX1D_UAV{
    uint MipSlice;
}

struct D3D11_TEX1D_ARRAY_UAV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX2D_UAV{
    uint MipSlice;
}

struct D3D11_TEX2D_ARRAY_UAV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

struct D3D11_TEX3D_UAV{
    uint MipSlice;
    uint FirstWSlice;
    uint WSize;
}

struct D3D11_VIDEO_COLOR_YCbCrA{
    float Y;
    float Cb;
    float Cr;
    float A;
}

struct D3D11_VIDEO_COLOR_RGBA{
    float R;
    float G;
    float B;
    float A;
}

struct D3D11_OMAC{
    ubyte* Omac;
}

struct __MIDL___MIDL_itf_d3d11_0000_0034_0001{
    uint ProtectionEnabled;
    uint OverlayOrFullscreenRequired;
    uint Reserved;
}

struct D3D11_AUTHENTICATED_QUERY_OUTPUT{
    D3D11_OMAC omac;
    _GUID QueryType;
    void* hChannel;
    uint SequenceNumber;
    int ReturnCode;
}

union D3D11_AUTHENTICATED_PROTECTION_FLAGS{
    __MIDL___MIDL_itf_d3d11_0000_0034_0001 Flags;
    uint Value;
}

struct D3D11_AUTHENTICATED_QUERY_INPUT{
    _GUID QueryType;
    void* hChannel;
    uint SequenceNumber;
}

struct D3D11_AUTHENTICATED_CONFIGURE_INPUT{
    D3D11_OMAC omac;
    _GUID ConfigureType;
    void* hChannel;
    uint SequenceNumber;
}

struct D3D11_TEX2D_VDOV{
    uint ArraySlice;
}

struct D3D11_TEX2D_VPIV{
    uint MipSlice;
    uint ArraySlice;
}

struct D3D11_TEX2D_VPOV{
    uint MipSlice;
}

struct D3D11_TEX2D_ARRAY_VPOV{
    uint MipSlice;
    uint FirstArraySlice;
    uint ArraySize;
}

interface ID3D11DeviceChild: IUnknown {
    static immutable iidof = GUID(0x1841e5c8, 0x16b0, 0x489b, [0xbc, 0xc8, 0x44, 0xcf, 0xb0, 0xd5, 0xde, 0xae]);
    void GetDevice(ID3D11Device** GetDevice);
    int GetPrivateData(_GUID* GetPrivateData, uint* GetPrivateData, void* GetPrivateData);
    int SetPrivateData(_GUID* SetPrivateData, uint SetPrivateData, void* SetPrivateData);
    int SetPrivateDataInterface(_GUID* SetPrivateDataInterface, IUnknown* SetPrivateDataInterface);
}

interface ID3D11DepthStencilState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x03823efb, 0x8d8f, 0x4e1c, [0x9a, 0xa2, 0xf6, 0x4b, 0xb2, 0xcb, 0xfd, 0xf1]);
    void GetDesc(D3D11_DEPTH_STENCIL_DESC* GetDesc);
}

interface ID3D11BlendState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x75b68faa, 0x347d, 0x4159, [0x8f, 0x45, 0xa0, 0x64, 0x0f, 0x01, 0xcd, 0x9a]);
    void GetDesc(D3D11_BLEND_DESC* GetDesc);
}

interface ID3D11RasterizerState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x9bb4ab81, 0xab1a, 0x4d8f, [0xb5, 0x06, 0xfc, 0x04, 0x20, 0x0b, 0x6e, 0xe7]);
    void GetDesc(D3D11_RASTERIZER_DESC* GetDesc);
}

interface ID3D11Resource: ID3D11DeviceChild {
    static immutable iidof = GUID(0xdc8e63f3, 0xd12b, 0x4952, [0xb4, 0x7b, 0x5e, 0x45, 0x02, 0x6a, 0x86, 0x2d]);
    void GetType(D3D11_RESOURCE_DIMENSION* GetType);
    void SetEvictionPriority(uint SetEvictionPriority);
    uint GetEvictionPriority();
}

interface ID3D11Buffer: ID3D11Resource {
    static immutable iidof = GUID(0x48570b85, 0xd1ee, 0x4fcd, [0xa2, 0x50, 0xeb, 0x35, 0x07, 0x22, 0xb0, 0x37]);
    void GetDesc(D3D11_BUFFER_DESC* GetDesc);
}

interface ID3D11Texture1D: ID3D11Resource {
    static immutable iidof = GUID(0xf8fb5c27, 0xc6b3, 0x4f75, [0xa4, 0xc8, 0x43, 0x9a, 0xf2, 0xef, 0x56, 0x4c]);
    void GetDesc(D3D11_TEXTURE1D_DESC* GetDesc);
}

interface ID3D11Texture2D: ID3D11Resource {
    static immutable iidof = GUID(0x6f15aaf2, 0xd208, 0x4e89, [0x9a, 0xb4, 0x48, 0x95, 0x35, 0xd3, 0x4f, 0x9c]);
    void GetDesc(D3D11_TEXTURE2D_DESC* GetDesc);
}

interface ID3D11Texture3D: ID3D11Resource {
    static immutable iidof = GUID(0x037e866e, 0xf56d, 0x4357, [0xa8, 0xaf, 0x9d, 0xab, 0xbe, 0x6e, 0x25, 0x0e]);
    void GetDesc(D3D11_TEXTURE3D_DESC* GetDesc);
}

interface ID3D11View: ID3D11DeviceChild {
    static immutable iidof = GUID(0x839d1216, 0xbb2e, 0x412b, [0xb7, 0xf4, 0xa9, 0xdb, 0xeb, 0xe0, 0x8e, 0xd1]);
    void GetResource(ID3D11Resource** GetResource);
}

interface ID3D11ShaderResourceView: ID3D11View {
    static immutable iidof = GUID(0xb0e06fe0, 0x8192, 0x4e1a, [0xb1, 0xca, 0x36, 0xd7, 0x41, 0x47, 0x10, 0xb2]);
    void GetDesc(D3D11_SHADER_RESOURCE_VIEW_DESC* GetDesc);
}

interface ID3D11RenderTargetView: ID3D11View {
    static immutable iidof = GUID(0xdfdba067, 0x0b8d, 0x4865, [0x87, 0x5b, 0xd7, 0xb4, 0x51, 0x6c, 0xc1, 0x64]);
    void GetDesc(D3D11_RENDER_TARGET_VIEW_DESC* GetDesc);
}

interface ID3D11DepthStencilView: ID3D11View {
    static immutable iidof = GUID(0x9fdac92a, 0x1876, 0x48c3, [0xaf, 0xad, 0x25, 0xb9, 0x4f, 0x84, 0xa9, 0xb6]);
    void GetDesc(D3D11_DEPTH_STENCIL_VIEW_DESC* GetDesc);
}

interface ID3D11UnorderedAccessView: ID3D11View {
    static immutable iidof = GUID(0x28acf509, 0x7f5c, 0x48f6, [0x86, 0x11, 0xf3, 0x16, 0x01, 0x0a, 0x63, 0x80]);
    void GetDesc(D3D11_UNORDERED_ACCESS_VIEW_DESC* GetDesc);
}

interface ID3D11VertexShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3b301d64, 0xd678, 0x4289, [0x88, 0x97, 0x22, 0xf8, 0x92, 0x8b, 0x72, 0xf3]);
}

interface ID3D11HullShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x8e5c6061, 0x628a, 0x4c8e, [0x82, 0x64, 0xbb, 0xe4, 0x5c, 0xb3, 0xd5, 0xdd]);
}

interface ID3D11DomainShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0xf582c508, 0x0f36, 0x490c, [0x99, 0x77, 0x31, 0xee, 0xce, 0x26, 0x8c, 0xfa]);
}

interface ID3D11GeometryShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x38325b96, 0xeffb, 0x4022, [0xba, 0x02, 0x2e, 0x79, 0x5b, 0x70, 0x27, 0x5c]);
}

interface ID3D11PixelShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0xea82e40d, 0x51dc, 0x4f33, [0x93, 0xd4, 0xdb, 0x7c, 0x91, 0x25, 0xae, 0x8c]);
}

interface ID3D11ComputeShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x4f5b196e, 0xc2bd, 0x495e, [0xbd, 0x01, 0x1f, 0xde, 0xd3, 0x8e, 0x49, 0x69]);
}

interface ID3D11InputLayout: ID3D11DeviceChild {
    static immutable iidof = GUID(0xe4819ddc, 0x4cf0, 0x4025, [0xbd, 0x26, 0x5d, 0xe8, 0x2a, 0x3e, 0x07, 0xb7]);
}

interface ID3D11SamplerState: ID3D11DeviceChild {
    static immutable iidof = GUID(0xda6fea51, 0x564c, 0x4487, [0x98, 0x10, 0xf0, 0xd0, 0xf9, 0xb4, 0xe3, 0xa5]);
    void GetDesc(D3D11_SAMPLER_DESC* GetDesc);
}

interface ID3D11Asynchronous: ID3D11DeviceChild {
    static immutable iidof = GUID(0x4b35d0cd, 0x1e15, 0x4258, [0x9c, 0x98, 0x1b, 0x13, 0x33, 0xf6, 0xdd, 0x3b]);
    uint GetDataSize();
}

interface ID3D11Query: ID3D11Asynchronous {
    static immutable iidof = GUID(0xd6c00747, 0x87b7, 0x425e, [0xb8, 0x4d, 0x44, 0xd1, 0x08, 0x56, 0x0a, 0xfd]);
    void GetDesc(D3D11_QUERY_DESC* GetDesc);
}

interface ID3D11Predicate: ID3D11Query {
    static immutable iidof = GUID(0x9eb576dd, 0x9f77, 0x4d86, [0x81, 0xaa, 0x8b, 0xab, 0x5f, 0xe4, 0x90, 0xe2]);
}

interface ID3D11Counter: ID3D11Asynchronous {
    static immutable iidof = GUID(0x6e8c49fb, 0xa371, 0x4770, [0xb4, 0x40, 0x29, 0x08, 0x60, 0x22, 0xb7, 0x41]);
    void GetDesc(D3D11_COUNTER_DESC* GetDesc);
}

interface ID3D11ClassInstance: ID3D11DeviceChild {
    static immutable iidof = GUID(0xa6cd7faa, 0xb0b7, 0x4a2f, [0x94, 0x36, 0x86, 0x62, 0xa6, 0x57, 0x97, 0xcb]);
    void GetClassLinkage(ID3D11ClassLinkage** GetClassLinkage);
    void GetDesc(D3D11_CLASS_INSTANCE_DESC* GetDesc);
    void GetInstanceName(byte* GetInstanceName, ulong* GetInstanceName);
    void GetTypeName(byte* GetTypeName, ulong* GetTypeName);
}

interface ID3D11ClassLinkage: ID3D11DeviceChild {
    static immutable iidof = GUID(0xddf57cba, 0x9543, 0x46e4, [0xa1, 0x2b, 0xf2, 0x07, 0xa0, 0xfe, 0x7f, 0xed]);
    int GetClassInstance(byte* GetClassInstance, uint GetClassInstance, ID3D11ClassInstance** GetClassInstance);
    int CreateClassInstance(byte* CreateClassInstance, uint CreateClassInstance, uint CreateClassInstance, uint CreateClassInstance, uint CreateClassInstance, ID3D11ClassInstance** CreateClassInstance);
}

interface ID3D11CommandList: ID3D11DeviceChild {
    static immutable iidof = GUID(0xa24bc4d1, 0x769e, 0x43f7, [0x80, 0x13, 0x98, 0xff, 0x56, 0x6c, 0x18, 0xe2]);
    uint GetContextFlags();
}

interface ID3D11DeviceContext: ID3D11DeviceChild {
    static immutable iidof = GUID(0xc0bfa96c, 0xe089, 0x44fb, [0x8e, 0xaf, 0x26, 0xf8, 0x79, 0x61, 0x90, 0xda]);
    void VSSetConstantBuffers(uint VSSetConstantBuffers, uint VSSetConstantBuffers, ID3D11Buffer** VSSetConstantBuffers);
    void PSSetShaderResources(uint PSSetShaderResources, uint PSSetShaderResources, ID3D11ShaderResourceView** PSSetShaderResources);
    void PSSetShader(ID3D11PixelShader* PSSetShader, ID3D11ClassInstance** PSSetShader, uint PSSetShader);
    void PSSetSamplers(uint PSSetSamplers, uint PSSetSamplers, ID3D11SamplerState** PSSetSamplers);
    void VSSetShader(ID3D11VertexShader* VSSetShader, ID3D11ClassInstance** VSSetShader, uint VSSetShader);
    void DrawIndexed(uint DrawIndexed, uint DrawIndexed, int DrawIndexed);
    void Draw(uint Draw, uint Draw);
    int Map(ID3D11Resource* Map, uint Map, D3D11_MAP Map, uint Map, D3D11_MAPPED_SUBRESOURCE* Map);
    void Unmap(ID3D11Resource* Unmap, uint Unmap);
    void PSSetConstantBuffers(uint PSSetConstantBuffers, uint PSSetConstantBuffers, ID3D11Buffer** PSSetConstantBuffers);
    void IASetInputLayout(ID3D11InputLayout* IASetInputLayout);
    void IASetVertexBuffers(uint IASetVertexBuffers, uint IASetVertexBuffers, ID3D11Buffer** IASetVertexBuffers, uint* IASetVertexBuffers, uint* IASetVertexBuffers);
    void IASetIndexBuffer(ID3D11Buffer* IASetIndexBuffer, DXGI_FORMAT IASetIndexBuffer, uint IASetIndexBuffer);
    void DrawIndexedInstanced(uint DrawIndexedInstanced, uint DrawIndexedInstanced, uint DrawIndexedInstanced, int DrawIndexedInstanced, uint DrawIndexedInstanced);
    void DrawInstanced(uint DrawInstanced, uint DrawInstanced, uint DrawInstanced, uint DrawInstanced);
    void GSSetConstantBuffers(uint GSSetConstantBuffers, uint GSSetConstantBuffers, ID3D11Buffer** GSSetConstantBuffers);
    void GSSetShader(ID3D11GeometryShader* GSSetShader, ID3D11ClassInstance** GSSetShader, uint GSSetShader);
    void IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY IASetPrimitiveTopology);
    void VSSetShaderResources(uint VSSetShaderResources, uint VSSetShaderResources, ID3D11ShaderResourceView** VSSetShaderResources);
    void VSSetSamplers(uint VSSetSamplers, uint VSSetSamplers, ID3D11SamplerState** VSSetSamplers);
    void Begin(ID3D11Asynchronous* Begin);
    void End(ID3D11Asynchronous* End);
    int GetData(ID3D11Asynchronous* GetData, void* GetData, uint GetData, uint GetData);
    void SetPredication(ID3D11Predicate* SetPredication, int SetPredication);
    void GSSetShaderResources(uint GSSetShaderResources, uint GSSetShaderResources, ID3D11ShaderResourceView** GSSetShaderResources);
    void GSSetSamplers(uint GSSetSamplers, uint GSSetSamplers, ID3D11SamplerState** GSSetSamplers);
    void OMSetRenderTargets(uint OMSetRenderTargets, ID3D11RenderTargetView** OMSetRenderTargets, ID3D11DepthStencilView* OMSetRenderTargets);
    void OMSetRenderTargetsAndUnorderedAccessViews(uint OMSetRenderTargetsAndUnorderedAccessViews, ID3D11RenderTargetView** OMSetRenderTargetsAndUnorderedAccessViews, ID3D11DepthStencilView* OMSetRenderTargetsAndUnorderedAccessViews, uint OMSetRenderTargetsAndUnorderedAccessViews, uint OMSetRenderTargetsAndUnorderedAccessViews, ID3D11UnorderedAccessView** OMSetRenderTargetsAndUnorderedAccessViews, uint* OMSetRenderTargetsAndUnorderedAccessViews);
    void OMSetBlendState(ID3D11BlendState* OMSetBlendState, float* OMSetBlendState, uint OMSetBlendState);
    void OMSetDepthStencilState(ID3D11DepthStencilState* OMSetDepthStencilState, uint OMSetDepthStencilState);
    void SOSetTargets(uint SOSetTargets, ID3D11Buffer** SOSetTargets, uint* SOSetTargets);
    void DrawAuto();
    void DrawIndexedInstancedIndirect(ID3D11Buffer* DrawIndexedInstancedIndirect, uint DrawIndexedInstancedIndirect);
    void DrawInstancedIndirect(ID3D11Buffer* DrawInstancedIndirect, uint DrawInstancedIndirect);
    void Dispatch(uint Dispatch, uint Dispatch, uint Dispatch);
    void DispatchIndirect(ID3D11Buffer* DispatchIndirect, uint DispatchIndirect);
    void RSSetState(ID3D11RasterizerState* RSSetState);
    void RSSetViewports(uint RSSetViewports, D3D11_VIEWPORT* RSSetViewports);
    void RSSetScissorRects(uint RSSetScissorRects, tagRECT* RSSetScissorRects);
    void CopySubresourceRegion(ID3D11Resource* CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, uint CopySubresourceRegion, ID3D11Resource* CopySubresourceRegion, uint CopySubresourceRegion, D3D11_BOX* CopySubresourceRegion);
    void CopyResource(ID3D11Resource* CopyResource, ID3D11Resource* CopyResource);
    void UpdateSubresource(ID3D11Resource* UpdateSubresource, uint UpdateSubresource, D3D11_BOX* UpdateSubresource, void* UpdateSubresource, uint UpdateSubresource, uint UpdateSubresource);
    void CopyStructureCount(ID3D11Buffer* CopyStructureCount, uint CopyStructureCount, ID3D11UnorderedAccessView* CopyStructureCount);
    void ClearRenderTargetView(ID3D11RenderTargetView* ClearRenderTargetView, float* ClearRenderTargetView);
    void ClearUnorderedAccessViewUint(ID3D11UnorderedAccessView* ClearUnorderedAccessViewUint, uint* ClearUnorderedAccessViewUint);
    void ClearUnorderedAccessViewFloat(ID3D11UnorderedAccessView* ClearUnorderedAccessViewFloat, float* ClearUnorderedAccessViewFloat);
    void ClearDepthStencilView(ID3D11DepthStencilView* ClearDepthStencilView, uint ClearDepthStencilView, float ClearDepthStencilView, ubyte ClearDepthStencilView);
    void GenerateMips(ID3D11ShaderResourceView* GenerateMips);
    void SetResourceMinLOD(ID3D11Resource* SetResourceMinLOD, float SetResourceMinLOD);
    float GetResourceMinLOD(ID3D11Resource* GetResourceMinLOD);
    void ResolveSubresource(ID3D11Resource* ResolveSubresource, uint ResolveSubresource, ID3D11Resource* ResolveSubresource, uint ResolveSubresource, DXGI_FORMAT ResolveSubresource);
    void ExecuteCommandList(ID3D11CommandList* ExecuteCommandList, int ExecuteCommandList);
    void HSSetShaderResources(uint HSSetShaderResources, uint HSSetShaderResources, ID3D11ShaderResourceView** HSSetShaderResources);
    void HSSetShader(ID3D11HullShader* HSSetShader, ID3D11ClassInstance** HSSetShader, uint HSSetShader);
    void HSSetSamplers(uint HSSetSamplers, uint HSSetSamplers, ID3D11SamplerState** HSSetSamplers);
    void HSSetConstantBuffers(uint HSSetConstantBuffers, uint HSSetConstantBuffers, ID3D11Buffer** HSSetConstantBuffers);
    void DSSetShaderResources(uint DSSetShaderResources, uint DSSetShaderResources, ID3D11ShaderResourceView** DSSetShaderResources);
    void DSSetShader(ID3D11DomainShader* DSSetShader, ID3D11ClassInstance** DSSetShader, uint DSSetShader);
    void DSSetSamplers(uint DSSetSamplers, uint DSSetSamplers, ID3D11SamplerState** DSSetSamplers);
    void DSSetConstantBuffers(uint DSSetConstantBuffers, uint DSSetConstantBuffers, ID3D11Buffer** DSSetConstantBuffers);
    void CSSetShaderResources(uint CSSetShaderResources, uint CSSetShaderResources, ID3D11ShaderResourceView** CSSetShaderResources);
    void CSSetUnorderedAccessViews(uint CSSetUnorderedAccessViews, uint CSSetUnorderedAccessViews, ID3D11UnorderedAccessView** CSSetUnorderedAccessViews, uint* CSSetUnorderedAccessViews);
    void CSSetShader(ID3D11ComputeShader* CSSetShader, ID3D11ClassInstance** CSSetShader, uint CSSetShader);
    void CSSetSamplers(uint CSSetSamplers, uint CSSetSamplers, ID3D11SamplerState** CSSetSamplers);
    void CSSetConstantBuffers(uint CSSetConstantBuffers, uint CSSetConstantBuffers, ID3D11Buffer** CSSetConstantBuffers);
    void VSGetConstantBuffers(uint VSGetConstantBuffers, uint VSGetConstantBuffers, ID3D11Buffer** VSGetConstantBuffers);
    void PSGetShaderResources(uint PSGetShaderResources, uint PSGetShaderResources, ID3D11ShaderResourceView** PSGetShaderResources);
    void PSGetShader(ID3D11PixelShader** PSGetShader, ID3D11ClassInstance** PSGetShader, uint* PSGetShader);
    void PSGetSamplers(uint PSGetSamplers, uint PSGetSamplers, ID3D11SamplerState** PSGetSamplers);
    void VSGetShader(ID3D11VertexShader** VSGetShader, ID3D11ClassInstance** VSGetShader, uint* VSGetShader);
    void PSGetConstantBuffers(uint PSGetConstantBuffers, uint PSGetConstantBuffers, ID3D11Buffer** PSGetConstantBuffers);
    void IAGetInputLayout(ID3D11InputLayout** IAGetInputLayout);
    void IAGetVertexBuffers(uint IAGetVertexBuffers, uint IAGetVertexBuffers, ID3D11Buffer** IAGetVertexBuffers, uint* IAGetVertexBuffers, uint* IAGetVertexBuffers);
    void IAGetIndexBuffer(ID3D11Buffer** IAGetIndexBuffer, DXGI_FORMAT* IAGetIndexBuffer, uint* IAGetIndexBuffer);
    void GSGetConstantBuffers(uint GSGetConstantBuffers, uint GSGetConstantBuffers, ID3D11Buffer** GSGetConstantBuffers);
    void GSGetShader(ID3D11GeometryShader** GSGetShader, ID3D11ClassInstance** GSGetShader, uint* GSGetShader);
    void IAGetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY* IAGetPrimitiveTopology);
    void VSGetShaderResources(uint VSGetShaderResources, uint VSGetShaderResources, ID3D11ShaderResourceView** VSGetShaderResources);
    void VSGetSamplers(uint VSGetSamplers, uint VSGetSamplers, ID3D11SamplerState** VSGetSamplers);
    void GetPredication(ID3D11Predicate** GetPredication, int* GetPredication);
    void GSGetShaderResources(uint GSGetShaderResources, uint GSGetShaderResources, ID3D11ShaderResourceView** GSGetShaderResources);
    void GSGetSamplers(uint GSGetSamplers, uint GSGetSamplers, ID3D11SamplerState** GSGetSamplers);
    void OMGetRenderTargets(uint OMGetRenderTargets, ID3D11RenderTargetView** OMGetRenderTargets, ID3D11DepthStencilView** OMGetRenderTargets);
    void OMGetRenderTargetsAndUnorderedAccessViews(uint OMGetRenderTargetsAndUnorderedAccessViews, ID3D11RenderTargetView** OMGetRenderTargetsAndUnorderedAccessViews, ID3D11DepthStencilView** OMGetRenderTargetsAndUnorderedAccessViews, uint OMGetRenderTargetsAndUnorderedAccessViews, uint OMGetRenderTargetsAndUnorderedAccessViews, ID3D11UnorderedAccessView** OMGetRenderTargetsAndUnorderedAccessViews);
    void OMGetBlendState(ID3D11BlendState** OMGetBlendState, float* OMGetBlendState, uint* OMGetBlendState);
    void OMGetDepthStencilState(ID3D11DepthStencilState** OMGetDepthStencilState, uint* OMGetDepthStencilState);
    void SOGetTargets(uint SOGetTargets, ID3D11Buffer** SOGetTargets);
    void RSGetState(ID3D11RasterizerState** RSGetState);
    void RSGetViewports(uint* RSGetViewports, D3D11_VIEWPORT* RSGetViewports);
    void RSGetScissorRects(uint* RSGetScissorRects, tagRECT* RSGetScissorRects);
    void HSGetShaderResources(uint HSGetShaderResources, uint HSGetShaderResources, ID3D11ShaderResourceView** HSGetShaderResources);
    void HSGetShader(ID3D11HullShader** HSGetShader, ID3D11ClassInstance** HSGetShader, uint* HSGetShader);
    void HSGetSamplers(uint HSGetSamplers, uint HSGetSamplers, ID3D11SamplerState** HSGetSamplers);
    void HSGetConstantBuffers(uint HSGetConstantBuffers, uint HSGetConstantBuffers, ID3D11Buffer** HSGetConstantBuffers);
    void DSGetShaderResources(uint DSGetShaderResources, uint DSGetShaderResources, ID3D11ShaderResourceView** DSGetShaderResources);
    void DSGetShader(ID3D11DomainShader** DSGetShader, ID3D11ClassInstance** DSGetShader, uint* DSGetShader);
    void DSGetSamplers(uint DSGetSamplers, uint DSGetSamplers, ID3D11SamplerState** DSGetSamplers);
    void DSGetConstantBuffers(uint DSGetConstantBuffers, uint DSGetConstantBuffers, ID3D11Buffer** DSGetConstantBuffers);
    void CSGetShaderResources(uint CSGetShaderResources, uint CSGetShaderResources, ID3D11ShaderResourceView** CSGetShaderResources);
    void CSGetUnorderedAccessViews(uint CSGetUnorderedAccessViews, uint CSGetUnorderedAccessViews, ID3D11UnorderedAccessView** CSGetUnorderedAccessViews);
    void CSGetShader(ID3D11ComputeShader** CSGetShader, ID3D11ClassInstance** CSGetShader, uint* CSGetShader);
    void CSGetSamplers(uint CSGetSamplers, uint CSGetSamplers, ID3D11SamplerState** CSGetSamplers);
    void CSGetConstantBuffers(uint CSGetConstantBuffers, uint CSGetConstantBuffers, ID3D11Buffer** CSGetConstantBuffers);
    void ClearState();
    void Flush();
    D3D11_DEVICE_CONTEXT_TYPE GetType();
    uint GetContextFlags();
    int FinishCommandList(int FinishCommandList, ID3D11CommandList** FinishCommandList);
}

interface ID3D11VideoDecoder: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3c9c5b51, 0x995d, 0x48d1, [0x9b, 0x8d, 0xfa, 0x5c, 0xae, 0xde, 0xd6, 0x5c]);
    int GetCreationParameters(D3D11_VIDEO_DECODER_DESC* GetCreationParameters, D3D11_VIDEO_DECODER_CONFIG* GetCreationParameters);
    int GetDriverHandle(void** GetDriverHandle);
}

interface ID3D11VideoProcessorEnumerator: ID3D11DeviceChild {
    static immutable iidof = GUID(0x31627037, 0x53ab, 0x4200, [0x90, 0x61, 0x05, 0xfa, 0xa9, 0xab, 0x45, 0xf9]);
    int GetVideoProcessorContentDesc(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* GetVideoProcessorContentDesc);
    int CheckVideoProcessorFormat(DXGI_FORMAT CheckVideoProcessorFormat, uint* CheckVideoProcessorFormat);
    int GetVideoProcessorCaps(D3D11_VIDEO_PROCESSOR_CAPS* GetVideoProcessorCaps);
    int GetVideoProcessorRateConversionCaps(uint GetVideoProcessorRateConversionCaps, D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS* GetVideoProcessorRateConversionCaps);
    int GetVideoProcessorCustomRate(uint GetVideoProcessorCustomRate, uint GetVideoProcessorCustomRate, D3D11_VIDEO_PROCESSOR_CUSTOM_RATE* GetVideoProcessorCustomRate);
    int GetVideoProcessorFilterRange(D3D11_VIDEO_PROCESSOR_FILTER GetVideoProcessorFilterRange, D3D11_VIDEO_PROCESSOR_FILTER_RANGE* GetVideoProcessorFilterRange);
}

interface ID3D11VideoProcessor: ID3D11DeviceChild {
    static immutable iidof = GUID(0x1d7b0652, 0x185f, 0x41c6, [0x85, 0xce, 0x0c, 0x5b, 0xe3, 0xd4, 0xae, 0x6c]);
    void GetContentDesc(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* GetContentDesc);
    void GetRateConversionCaps(D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS* GetRateConversionCaps);
}

interface ID3D11AuthenticatedChannel: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3015a308, 0xdcbd, 0x47aa, [0xa7, 0x47, 0x19, 0x24, 0x86, 0xd1, 0x4d, 0x4a]);
    int GetCertificateSize(uint* GetCertificateSize);
    int GetCertificate(uint GetCertificate, ubyte* GetCertificate);
    void GetChannelHandle(void** GetChannelHandle);
}

interface ID3D11CryptoSession: ID3D11DeviceChild {
    static immutable iidof = GUID(0x9b32f9ad, 0xbdcc, 0x40a6, [0xa3, 0x9d, 0xd5, 0xc8, 0x65, 0x84, 0x57, 0x20]);
    void GetCryptoType(_GUID* GetCryptoType);
    void GetDecoderProfile(_GUID* GetDecoderProfile);
    int GetCertificateSize(uint* GetCertificateSize);
    int GetCertificate(uint GetCertificate, ubyte* GetCertificate);
    void GetCryptoSessionHandle(void** GetCryptoSessionHandle);
}

interface ID3D11VideoDecoderOutputView: ID3D11View {
    static immutable iidof = GUID(0xc2931aea, 0x2a85, 0x4f20, [0x86, 0x0f, 0xfb, 0xa1, 0xfd, 0x25, 0x6e, 0x18]);
    void GetDesc(D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC* GetDesc);
}

interface ID3D11VideoProcessorInputView: ID3D11View {
    static immutable iidof = GUID(0x11ec5a5f, 0x51dc, 0x4945, [0xab, 0x34, 0x6e, 0x8c, 0x21, 0x30, 0x0e, 0xa5]);
    void GetDesc(D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC* GetDesc);
}

interface ID3D11VideoProcessorOutputView: ID3D11View {
    static immutable iidof = GUID(0xa048285e, 0x25a9, 0x4527, [0xbd, 0x93, 0xd6, 0x8b, 0x68, 0xc4, 0x42, 0x54]);
    void GetDesc(D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC* GetDesc);
}

interface ID3D11VideoContext: ID3D11DeviceChild {
    static immutable iidof = GUID(0x61f21c45, 0x3c0e, 0x4a74, [0x9c, 0xea, 0x67, 0x10, 0x0d, 0x9a, 0xd5, 0xe4]);
    int GetDecoderBuffer(ID3D11VideoDecoder* GetDecoderBuffer, D3D11_VIDEO_DECODER_BUFFER_TYPE GetDecoderBuffer, uint* GetDecoderBuffer, void** GetDecoderBuffer);
    int ReleaseDecoderBuffer(ID3D11VideoDecoder* ReleaseDecoderBuffer, D3D11_VIDEO_DECODER_BUFFER_TYPE ReleaseDecoderBuffer);
    int DecoderBeginFrame(ID3D11VideoDecoder* DecoderBeginFrame, ID3D11VideoDecoderOutputView* DecoderBeginFrame, uint DecoderBeginFrame, void* DecoderBeginFrame);
    int DecoderEndFrame(ID3D11VideoDecoder* DecoderEndFrame);
    int SubmitDecoderBuffers(ID3D11VideoDecoder* SubmitDecoderBuffers, uint SubmitDecoderBuffers, D3D11_VIDEO_DECODER_BUFFER_DESC* SubmitDecoderBuffers);
    int DecoderExtension(ID3D11VideoDecoder* DecoderExtension, D3D11_VIDEO_DECODER_EXTENSION* DecoderExtension);
    void VideoProcessorSetOutputTargetRect(ID3D11VideoProcessor* VideoProcessorSetOutputTargetRect, int VideoProcessorSetOutputTargetRect, tagRECT* VideoProcessorSetOutputTargetRect);
    void VideoProcessorSetOutputBackgroundColor(ID3D11VideoProcessor* VideoProcessorSetOutputBackgroundColor, int VideoProcessorSetOutputBackgroundColor, D3D11_VIDEO_COLOR* VideoProcessorSetOutputBackgroundColor);
    void VideoProcessorSetOutputColorSpace(ID3D11VideoProcessor* VideoProcessorSetOutputColorSpace, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* VideoProcessorSetOutputColorSpace);
    void VideoProcessorSetOutputAlphaFillMode(ID3D11VideoProcessor* VideoProcessorSetOutputAlphaFillMode, D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE VideoProcessorSetOutputAlphaFillMode, uint VideoProcessorSetOutputAlphaFillMode);
    void VideoProcessorSetOutputConstriction(ID3D11VideoProcessor* VideoProcessorSetOutputConstriction, int VideoProcessorSetOutputConstriction, tagSIZE VideoProcessorSetOutputConstriction);
    void VideoProcessorSetOutputStereoMode(ID3D11VideoProcessor* VideoProcessorSetOutputStereoMode, int VideoProcessorSetOutputStereoMode);
    int VideoProcessorSetOutputExtension(ID3D11VideoProcessor* VideoProcessorSetOutputExtension, _GUID* VideoProcessorSetOutputExtension, uint VideoProcessorSetOutputExtension, void* VideoProcessorSetOutputExtension);
    void VideoProcessorGetOutputTargetRect(ID3D11VideoProcessor* VideoProcessorGetOutputTargetRect, int* VideoProcessorGetOutputTargetRect, tagRECT* VideoProcessorGetOutputTargetRect);
    void VideoProcessorGetOutputBackgroundColor(ID3D11VideoProcessor* VideoProcessorGetOutputBackgroundColor, int* VideoProcessorGetOutputBackgroundColor, D3D11_VIDEO_COLOR* VideoProcessorGetOutputBackgroundColor);
    void VideoProcessorGetOutputColorSpace(ID3D11VideoProcessor* VideoProcessorGetOutputColorSpace, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* VideoProcessorGetOutputColorSpace);
    void VideoProcessorGetOutputAlphaFillMode(ID3D11VideoProcessor* VideoProcessorGetOutputAlphaFillMode, D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE* VideoProcessorGetOutputAlphaFillMode, uint* VideoProcessorGetOutputAlphaFillMode);
    void VideoProcessorGetOutputConstriction(ID3D11VideoProcessor* VideoProcessorGetOutputConstriction, int* VideoProcessorGetOutputConstriction, tagSIZE* VideoProcessorGetOutputConstriction);
    void VideoProcessorGetOutputStereoMode(ID3D11VideoProcessor* VideoProcessorGetOutputStereoMode, int* VideoProcessorGetOutputStereoMode);
    int VideoProcessorGetOutputExtension(ID3D11VideoProcessor* VideoProcessorGetOutputExtension, _GUID* VideoProcessorGetOutputExtension, uint VideoProcessorGetOutputExtension, void* VideoProcessorGetOutputExtension);
    void VideoProcessorSetStreamFrameFormat(ID3D11VideoProcessor* VideoProcessorSetStreamFrameFormat, uint VideoProcessorSetStreamFrameFormat, D3D11_VIDEO_FRAME_FORMAT VideoProcessorSetStreamFrameFormat);
    void VideoProcessorSetStreamColorSpace(ID3D11VideoProcessor* VideoProcessorSetStreamColorSpace, uint VideoProcessorSetStreamColorSpace, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* VideoProcessorSetStreamColorSpace);
    void VideoProcessorSetStreamOutputRate(ID3D11VideoProcessor* VideoProcessorSetStreamOutputRate, uint VideoProcessorSetStreamOutputRate, D3D11_VIDEO_PROCESSOR_OUTPUT_RATE VideoProcessorSetStreamOutputRate, int VideoProcessorSetStreamOutputRate, DXGI_RATIONAL* VideoProcessorSetStreamOutputRate);
    void VideoProcessorSetStreamSourceRect(ID3D11VideoProcessor* VideoProcessorSetStreamSourceRect, uint VideoProcessorSetStreamSourceRect, int VideoProcessorSetStreamSourceRect, tagRECT* VideoProcessorSetStreamSourceRect);
    void VideoProcessorSetStreamDestRect(ID3D11VideoProcessor* VideoProcessorSetStreamDestRect, uint VideoProcessorSetStreamDestRect, int VideoProcessorSetStreamDestRect, tagRECT* VideoProcessorSetStreamDestRect);
    void VideoProcessorSetStreamAlpha(ID3D11VideoProcessor* VideoProcessorSetStreamAlpha, uint VideoProcessorSetStreamAlpha, int VideoProcessorSetStreamAlpha, float VideoProcessorSetStreamAlpha);
    void VideoProcessorSetStreamPalette(ID3D11VideoProcessor* VideoProcessorSetStreamPalette, uint VideoProcessorSetStreamPalette, uint VideoProcessorSetStreamPalette, uint* VideoProcessorSetStreamPalette);
    void VideoProcessorSetStreamPixelAspectRatio(ID3D11VideoProcessor* VideoProcessorSetStreamPixelAspectRatio, uint VideoProcessorSetStreamPixelAspectRatio, int VideoProcessorSetStreamPixelAspectRatio, DXGI_RATIONAL* VideoProcessorSetStreamPixelAspectRatio, DXGI_RATIONAL* VideoProcessorSetStreamPixelAspectRatio);
    void VideoProcessorSetStreamLumaKey(ID3D11VideoProcessor* VideoProcessorSetStreamLumaKey, uint VideoProcessorSetStreamLumaKey, int VideoProcessorSetStreamLumaKey, float VideoProcessorSetStreamLumaKey, float VideoProcessorSetStreamLumaKey);
    void VideoProcessorSetStreamStereoFormat(ID3D11VideoProcessor* VideoProcessorSetStreamStereoFormat, uint VideoProcessorSetStreamStereoFormat, int VideoProcessorSetStreamStereoFormat, D3D11_VIDEO_PROCESSOR_STEREO_FORMAT VideoProcessorSetStreamStereoFormat, int VideoProcessorSetStreamStereoFormat, int VideoProcessorSetStreamStereoFormat, D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE VideoProcessorSetStreamStereoFormat, int VideoProcessorSetStreamStereoFormat);
    void VideoProcessorSetStreamAutoProcessingMode(ID3D11VideoProcessor* VideoProcessorSetStreamAutoProcessingMode, uint VideoProcessorSetStreamAutoProcessingMode, int VideoProcessorSetStreamAutoProcessingMode);
    void VideoProcessorSetStreamFilter(ID3D11VideoProcessor* VideoProcessorSetStreamFilter, uint VideoProcessorSetStreamFilter, D3D11_VIDEO_PROCESSOR_FILTER VideoProcessorSetStreamFilter, int VideoProcessorSetStreamFilter, int VideoProcessorSetStreamFilter);
    int VideoProcessorSetStreamExtension(ID3D11VideoProcessor* VideoProcessorSetStreamExtension, uint VideoProcessorSetStreamExtension, _GUID* VideoProcessorSetStreamExtension, uint VideoProcessorSetStreamExtension, void* VideoProcessorSetStreamExtension);
    void VideoProcessorGetStreamFrameFormat(ID3D11VideoProcessor* VideoProcessorGetStreamFrameFormat, uint VideoProcessorGetStreamFrameFormat, D3D11_VIDEO_FRAME_FORMAT* VideoProcessorGetStreamFrameFormat);
    void VideoProcessorGetStreamColorSpace(ID3D11VideoProcessor* VideoProcessorGetStreamColorSpace, uint VideoProcessorGetStreamColorSpace, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* VideoProcessorGetStreamColorSpace);
    void VideoProcessorGetStreamOutputRate(ID3D11VideoProcessor* VideoProcessorGetStreamOutputRate, uint VideoProcessorGetStreamOutputRate, D3D11_VIDEO_PROCESSOR_OUTPUT_RATE* VideoProcessorGetStreamOutputRate, int* VideoProcessorGetStreamOutputRate, DXGI_RATIONAL* VideoProcessorGetStreamOutputRate);
    void VideoProcessorGetStreamSourceRect(ID3D11VideoProcessor* VideoProcessorGetStreamSourceRect, uint VideoProcessorGetStreamSourceRect, int* VideoProcessorGetStreamSourceRect, tagRECT* VideoProcessorGetStreamSourceRect);
    void VideoProcessorGetStreamDestRect(ID3D11VideoProcessor* VideoProcessorGetStreamDestRect, uint VideoProcessorGetStreamDestRect, int* VideoProcessorGetStreamDestRect, tagRECT* VideoProcessorGetStreamDestRect);
    void VideoProcessorGetStreamAlpha(ID3D11VideoProcessor* VideoProcessorGetStreamAlpha, uint VideoProcessorGetStreamAlpha, int* VideoProcessorGetStreamAlpha, float* VideoProcessorGetStreamAlpha);
    void VideoProcessorGetStreamPalette(ID3D11VideoProcessor* VideoProcessorGetStreamPalette, uint VideoProcessorGetStreamPalette, uint VideoProcessorGetStreamPalette, uint* VideoProcessorGetStreamPalette);
    void VideoProcessorGetStreamPixelAspectRatio(ID3D11VideoProcessor* VideoProcessorGetStreamPixelAspectRatio, uint VideoProcessorGetStreamPixelAspectRatio, int* VideoProcessorGetStreamPixelAspectRatio, DXGI_RATIONAL* VideoProcessorGetStreamPixelAspectRatio, DXGI_RATIONAL* VideoProcessorGetStreamPixelAspectRatio);
    void VideoProcessorGetStreamLumaKey(ID3D11VideoProcessor* VideoProcessorGetStreamLumaKey, uint VideoProcessorGetStreamLumaKey, int* VideoProcessorGetStreamLumaKey, float* VideoProcessorGetStreamLumaKey, float* VideoProcessorGetStreamLumaKey);
    void VideoProcessorGetStreamStereoFormat(ID3D11VideoProcessor* VideoProcessorGetStreamStereoFormat, uint VideoProcessorGetStreamStereoFormat, int* VideoProcessorGetStreamStereoFormat, D3D11_VIDEO_PROCESSOR_STEREO_FORMAT* VideoProcessorGetStreamStereoFormat, int* VideoProcessorGetStreamStereoFormat, int* VideoProcessorGetStreamStereoFormat, D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE* VideoProcessorGetStreamStereoFormat, int* VideoProcessorGetStreamStereoFormat);
    void VideoProcessorGetStreamAutoProcessingMode(ID3D11VideoProcessor* VideoProcessorGetStreamAutoProcessingMode, uint VideoProcessorGetStreamAutoProcessingMode, int* VideoProcessorGetStreamAutoProcessingMode);
    void VideoProcessorGetStreamFilter(ID3D11VideoProcessor* VideoProcessorGetStreamFilter, uint VideoProcessorGetStreamFilter, D3D11_VIDEO_PROCESSOR_FILTER VideoProcessorGetStreamFilter, int* VideoProcessorGetStreamFilter, int* VideoProcessorGetStreamFilter);
    int VideoProcessorGetStreamExtension(ID3D11VideoProcessor* VideoProcessorGetStreamExtension, uint VideoProcessorGetStreamExtension, _GUID* VideoProcessorGetStreamExtension, uint VideoProcessorGetStreamExtension, void* VideoProcessorGetStreamExtension);
    int VideoProcessorBlt(ID3D11VideoProcessor* VideoProcessorBlt, ID3D11VideoProcessorOutputView* VideoProcessorBlt, uint VideoProcessorBlt, uint VideoProcessorBlt, D3D11_VIDEO_PROCESSOR_STREAM* VideoProcessorBlt);
    int NegotiateCryptoSessionKeyExchange(ID3D11CryptoSession* NegotiateCryptoSessionKeyExchange, uint NegotiateCryptoSessionKeyExchange, void* NegotiateCryptoSessionKeyExchange);
    void EncryptionBlt(ID3D11CryptoSession* EncryptionBlt, ID3D11Texture2D* EncryptionBlt, ID3D11Texture2D* EncryptionBlt, uint EncryptionBlt, void* EncryptionBlt);
    void DecryptionBlt(ID3D11CryptoSession* DecryptionBlt, ID3D11Texture2D* DecryptionBlt, ID3D11Texture2D* DecryptionBlt, D3D11_ENCRYPTED_BLOCK_INFO* DecryptionBlt, uint DecryptionBlt, void* DecryptionBlt, uint DecryptionBlt, void* DecryptionBlt);
    void StartSessionKeyRefresh(ID3D11CryptoSession* StartSessionKeyRefresh, uint StartSessionKeyRefresh, void* StartSessionKeyRefresh);
    void FinishSessionKeyRefresh(ID3D11CryptoSession* FinishSessionKeyRefresh);
    int GetEncryptionBltKey(ID3D11CryptoSession* GetEncryptionBltKey, uint GetEncryptionBltKey, void* GetEncryptionBltKey);
    int NegotiateAuthenticatedChannelKeyExchange(ID3D11AuthenticatedChannel* NegotiateAuthenticatedChannelKeyExchange, uint NegotiateAuthenticatedChannelKeyExchange, void* NegotiateAuthenticatedChannelKeyExchange);
    int QueryAuthenticatedChannel(ID3D11AuthenticatedChannel* QueryAuthenticatedChannel, uint QueryAuthenticatedChannel, void* QueryAuthenticatedChannel, uint QueryAuthenticatedChannel, void* QueryAuthenticatedChannel);
    int ConfigureAuthenticatedChannel(ID3D11AuthenticatedChannel* ConfigureAuthenticatedChannel, uint ConfigureAuthenticatedChannel, void* ConfigureAuthenticatedChannel, D3D11_AUTHENTICATED_CONFIGURE_OUTPUT* ConfigureAuthenticatedChannel);
    void VideoProcessorSetStreamRotation(ID3D11VideoProcessor* VideoProcessorSetStreamRotation, uint VideoProcessorSetStreamRotation, int VideoProcessorSetStreamRotation, D3D11_VIDEO_PROCESSOR_ROTATION VideoProcessorSetStreamRotation);
    void VideoProcessorGetStreamRotation(ID3D11VideoProcessor* VideoProcessorGetStreamRotation, uint VideoProcessorGetStreamRotation, int* VideoProcessorGetStreamRotation, D3D11_VIDEO_PROCESSOR_ROTATION* VideoProcessorGetStreamRotation);
}

interface ID3D11VideoDevice: IUnknown {
    static immutable iidof = GUID(0x10ec4d5b, 0x975a, 0x4689, [0xb9, 0xe4, 0xd0, 0xaa, 0xc3, 0x0f, 0xe3, 0x33]);
    int CreateVideoDecoder(D3D11_VIDEO_DECODER_DESC* CreateVideoDecoder, D3D11_VIDEO_DECODER_CONFIG* CreateVideoDecoder, ID3D11VideoDecoder** CreateVideoDecoder);
    int CreateVideoProcessor(ID3D11VideoProcessorEnumerator* CreateVideoProcessor, uint CreateVideoProcessor, ID3D11VideoProcessor** CreateVideoProcessor);
    int CreateAuthenticatedChannel(D3D11_AUTHENTICATED_CHANNEL_TYPE CreateAuthenticatedChannel, ID3D11AuthenticatedChannel** CreateAuthenticatedChannel);
    int CreateCryptoSession(_GUID* CreateCryptoSession, _GUID* CreateCryptoSession, _GUID* CreateCryptoSession, ID3D11CryptoSession** CreateCryptoSession);
    int CreateVideoDecoderOutputView(ID3D11Resource* CreateVideoDecoderOutputView, D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC* CreateVideoDecoderOutputView, ID3D11VideoDecoderOutputView** CreateVideoDecoderOutputView);
    int CreateVideoProcessorInputView(ID3D11Resource* CreateVideoProcessorInputView, ID3D11VideoProcessorEnumerator* CreateVideoProcessorInputView, D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC* CreateVideoProcessorInputView, ID3D11VideoProcessorInputView** CreateVideoProcessorInputView);
    int CreateVideoProcessorOutputView(ID3D11Resource* CreateVideoProcessorOutputView, ID3D11VideoProcessorEnumerator* CreateVideoProcessorOutputView, D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC* CreateVideoProcessorOutputView, ID3D11VideoProcessorOutputView** CreateVideoProcessorOutputView);
    int CreateVideoProcessorEnumerator(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* CreateVideoProcessorEnumerator, ID3D11VideoProcessorEnumerator** CreateVideoProcessorEnumerator);
    uint GetVideoDecoderProfileCount();
    int GetVideoDecoderProfile(uint GetVideoDecoderProfile, _GUID* GetVideoDecoderProfile);
    int CheckVideoDecoderFormat(_GUID* CheckVideoDecoderFormat, DXGI_FORMAT CheckVideoDecoderFormat, int* CheckVideoDecoderFormat);
    int GetVideoDecoderConfigCount(D3D11_VIDEO_DECODER_DESC* GetVideoDecoderConfigCount, uint* GetVideoDecoderConfigCount);
    int GetVideoDecoderConfig(D3D11_VIDEO_DECODER_DESC* GetVideoDecoderConfig, uint GetVideoDecoderConfig, D3D11_VIDEO_DECODER_CONFIG* GetVideoDecoderConfig);
    int GetContentProtectionCaps(_GUID* GetContentProtectionCaps, _GUID* GetContentProtectionCaps, D3D11_VIDEO_CONTENT_PROTECTION_CAPS* GetContentProtectionCaps);
    int CheckCryptoKeyExchange(_GUID* CheckCryptoKeyExchange, _GUID* CheckCryptoKeyExchange, uint CheckCryptoKeyExchange, _GUID* CheckCryptoKeyExchange);
    int SetPrivateData(_GUID* SetPrivateData, uint SetPrivateData, void* SetPrivateData);
    int SetPrivateDataInterface(_GUID* SetPrivateDataInterface, IUnknown* SetPrivateDataInterface);
}

interface ID3D11Device: IUnknown {
    static immutable iidof = GUID(0xdb6f6ddb, 0xac77, 0x4e88, [0x82, 0x53, 0x81, 0x9d, 0xf9, 0xbb, 0xf1, 0x40]);
    int CreateBuffer(D3D11_BUFFER_DESC* CreateBuffer, D3D11_SUBRESOURCE_DATA* CreateBuffer, ID3D11Buffer** CreateBuffer);
    int CreateTexture1D(D3D11_TEXTURE1D_DESC* CreateTexture1D, D3D11_SUBRESOURCE_DATA* CreateTexture1D, ID3D11Texture1D** CreateTexture1D);
    int CreateTexture2D(D3D11_TEXTURE2D_DESC* CreateTexture2D, D3D11_SUBRESOURCE_DATA* CreateTexture2D, ID3D11Texture2D** CreateTexture2D);
    int CreateTexture3D(D3D11_TEXTURE3D_DESC* CreateTexture3D, D3D11_SUBRESOURCE_DATA* CreateTexture3D, ID3D11Texture3D** CreateTexture3D);
    int CreateShaderResourceView(ID3D11Resource* CreateShaderResourceView, D3D11_SHADER_RESOURCE_VIEW_DESC* CreateShaderResourceView, ID3D11ShaderResourceView** CreateShaderResourceView);
    int CreateUnorderedAccessView(ID3D11Resource* CreateUnorderedAccessView, D3D11_UNORDERED_ACCESS_VIEW_DESC* CreateUnorderedAccessView, ID3D11UnorderedAccessView** CreateUnorderedAccessView);
    int CreateRenderTargetView(ID3D11Resource* CreateRenderTargetView, D3D11_RENDER_TARGET_VIEW_DESC* CreateRenderTargetView, ID3D11RenderTargetView** CreateRenderTargetView);
    int CreateDepthStencilView(ID3D11Resource* CreateDepthStencilView, D3D11_DEPTH_STENCIL_VIEW_DESC* CreateDepthStencilView, ID3D11DepthStencilView** CreateDepthStencilView);
    int CreateInputLayout(D3D11_INPUT_ELEMENT_DESC* CreateInputLayout, uint CreateInputLayout, void* CreateInputLayout, ulong CreateInputLayout, ID3D11InputLayout** CreateInputLayout);
    int CreateVertexShader(void* CreateVertexShader, ulong CreateVertexShader, ID3D11ClassLinkage* CreateVertexShader, ID3D11VertexShader** CreateVertexShader);
    int CreateGeometryShader(void* CreateGeometryShader, ulong CreateGeometryShader, ID3D11ClassLinkage* CreateGeometryShader, ID3D11GeometryShader** CreateGeometryShader);
    int CreateGeometryShaderWithStreamOutput(void* CreateGeometryShaderWithStreamOutput, ulong CreateGeometryShaderWithStreamOutput, D3D11_SO_DECLARATION_ENTRY* CreateGeometryShaderWithStreamOutput, uint CreateGeometryShaderWithStreamOutput, uint* CreateGeometryShaderWithStreamOutput, uint CreateGeometryShaderWithStreamOutput, uint CreateGeometryShaderWithStreamOutput, ID3D11ClassLinkage* CreateGeometryShaderWithStreamOutput, ID3D11GeometryShader** CreateGeometryShaderWithStreamOutput);
    int CreatePixelShader(void* CreatePixelShader, ulong CreatePixelShader, ID3D11ClassLinkage* CreatePixelShader, ID3D11PixelShader** CreatePixelShader);
    int CreateHullShader(void* CreateHullShader, ulong CreateHullShader, ID3D11ClassLinkage* CreateHullShader, ID3D11HullShader** CreateHullShader);
    int CreateDomainShader(void* CreateDomainShader, ulong CreateDomainShader, ID3D11ClassLinkage* CreateDomainShader, ID3D11DomainShader** CreateDomainShader);
    int CreateComputeShader(void* CreateComputeShader, ulong CreateComputeShader, ID3D11ClassLinkage* CreateComputeShader, ID3D11ComputeShader** CreateComputeShader);
    int CreateClassLinkage(ID3D11ClassLinkage** CreateClassLinkage);
    int CreateBlendState(D3D11_BLEND_DESC* CreateBlendState, ID3D11BlendState** CreateBlendState);
    int CreateDepthStencilState(D3D11_DEPTH_STENCIL_DESC* CreateDepthStencilState, ID3D11DepthStencilState** CreateDepthStencilState);
    int CreateRasterizerState(D3D11_RASTERIZER_DESC* CreateRasterizerState, ID3D11RasterizerState** CreateRasterizerState);
    int CreateSamplerState(D3D11_SAMPLER_DESC* CreateSamplerState, ID3D11SamplerState** CreateSamplerState);
    int CreateQuery(D3D11_QUERY_DESC* CreateQuery, ID3D11Query** CreateQuery);
    int CreatePredicate(D3D11_QUERY_DESC* CreatePredicate, ID3D11Predicate** CreatePredicate);
    int CreateCounter(D3D11_COUNTER_DESC* CreateCounter, ID3D11Counter** CreateCounter);
    int CreateDeferredContext(uint CreateDeferredContext, ID3D11DeviceContext** CreateDeferredContext);
    int OpenSharedResource(void* OpenSharedResource, _GUID* OpenSharedResource, void** OpenSharedResource);
    int CheckFormatSupport(DXGI_FORMAT CheckFormatSupport, uint* CheckFormatSupport);
    int CheckMultisampleQualityLevels(DXGI_FORMAT CheckMultisampleQualityLevels, uint CheckMultisampleQualityLevels, uint* CheckMultisampleQualityLevels);
    void CheckCounterInfo(D3D11_COUNTER_INFO* CheckCounterInfo);
    int CheckCounter(D3D11_COUNTER_DESC* CheckCounter, D3D11_COUNTER_TYPE* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter, byte* CheckCounter, uint* CheckCounter);
    int CheckFeatureSupport(D3D11_FEATURE CheckFeatureSupport, void* CheckFeatureSupport, uint CheckFeatureSupport);
    int GetPrivateData(_GUID* GetPrivateData, uint* GetPrivateData, void* GetPrivateData);
    int SetPrivateData(_GUID* SetPrivateData, uint SetPrivateData, void* SetPrivateData);
    int SetPrivateDataInterface(_GUID* SetPrivateDataInterface, IUnknown* SetPrivateDataInterface);
    D3D_FEATURE_LEVEL GetFeatureLevel();
    uint GetCreationFlags();
    int GetDeviceRemovedReason();
    void GetImmediateContext(ID3D11DeviceContext** GetImmediateContext);
    int SetExceptionMode(uint SetExceptionMode);
    uint GetExceptionMode();
}

