// cpptypeinfo generated
module windowskits.d3d11;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;
import windowskits.unknwnbase;
import windowskits.dxgiformat;
import windowskits.d3dcommon;
import windowskits.windef;
import windowskits.dxgicommon;
import windowskits.dxgi;
import windowskits.minwindef;

const D3D11_SDK_VERSION = ( 7 );

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

enum D3D11_FILL_MODE {
    WIREFRAME = 0x00000002,
    SOLID = 0x00000003,
}

enum D3D11_CULL_MODE {
    NONE = 0x00000001,
    FRONT = 0x00000002,
    BACK = 0x00000003,
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

enum D3D11_UAV_DIMENSION {
    UNKNOWN = 0x00000000,
    BUFFER = 0x00000001,
    TEXTURE1D = 0x00000002,
    TEXTURE1DARRAY = 0x00000003,
    TEXTURE2D = 0x00000004,
    TEXTURE2DARRAY = 0x00000005,
    TEXTURE3D = 0x00000008,
}

enum D3D11_USAGE {
    DEFAULT = 0x00000000,
    IMMUTABLE = 0x00000001,
    DYNAMIC = 0x00000002,
    STAGING = 0x00000003,
}

enum D3D11_BIND_FLAG {
    VERTEX_BUFFER = 0x00000001,
    INDEX_BUFFER = 0x00000002,
    CONSTANT_BUFFER = 0x00000004,
    SHADER_RESOURCE = 0x00000008,
    STREAM_OUTPUT = 0x00000010,
    RENDER_TARGET = 0x00000020,
    DEPTH_STENCIL = 0x00000040,
    UNORDERED_ACCESS = 0x00000080,
    DECODER = 0x00000200,
    VIDEO_ENCODER = 0x00000400,
}

enum D3D11_CPU_ACCESS_FLAG {
    WRITE = 0x00010000,
    READ = 0x00020000,
}

enum D3D11_RESOURCE_MISC_FLAG {
    GENERATE_MIPS = 0x00000001,
    SHARED = 0x00000002,
    TEXTURECUBE = 0x00000004,
    DRAWINDIRECT_ARGS = 0x00000010,
    BUFFER_ALLOW_RAW_VIEWS = 0x00000020,
    BUFFER_STRUCTURED = 0x00000040,
    RESOURCE_CLAMP = 0x00000080,
    SHARED_KEYEDMUTEX = 0x00000100,
    GDI_COMPATIBLE = 0x00000200,
    SHARED_NTHANDLE = 0x00000800,
    RESTRICTED_CONTENT = 0x00001000,
    RESTRICT_SHARED_RESOURCE = 0x00002000,
    RESTRICT_SHARED_RESOURCE_DRIVER = 0x00004000,
    GUARDED = 0x00008000,
    TILE_POOL = 0x00020000,
    TILED = 0x00040000,
    HW_PROTECTED = 0x00080000,
}

enum D3D11_MAP_FLAG {
    DO_NOT_WAIT = 0x00100000,
}

enum D3D11_RAISE_FLAG {
    DRIVER_INTERNAL_ERROR = 0x00000001,
}

enum D3D11_CLEAR_FLAG {
    DEPTH = 0x00000001,
    STENCIL = 0x00000002,
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

enum D3D11_COLOR_WRITE_ENABLE {
    RED = 0x00000001,
    GREEN = 0x00000002,
    BLUE = 0x00000004,
    ALPHA = 0x00000008,
    ALL = 0x0000000f,
}

enum D3D11_TEXTURECUBE_FACE {
    POSITIVE_X = 0x00000000,
    NEGATIVE_X = 0x00000001,
    POSITIVE_Y = 0x00000002,
    NEGATIVE_Y = 0x00000003,
    POSITIVE_Z = 0x00000004,
    NEGATIVE_Z = 0x00000005,
}

enum D3D11_BUFFEREX_SRV_FLAG {
    RAW = 0x00000001,
}

enum D3D11_DSV_FLAG {
    READ_ONLY_DEPTH = 0x00000001,
    READ_ONLY_STENCIL = 0x00000002,
}

enum D3D11_BUFFER_UAV_FLAG {
    RAW = 0x00000001,
    APPEND = 0x00000002,
    COUNTER = 0x00000004,
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

enum D3D11_FILTER_TYPE {
    POINT = 0x00000000,
    LINEAR = 0x00000001,
}

enum D3D11_FILTER_REDUCTION_TYPE {
    STANDARD = 0x00000000,
    COMPARISON = 0x00000001,
    MINIMUM = 0x00000002,
    MAXIMUM = 0x00000003,
}

enum D3D11_TEXTURE_ADDRESS_MODE {
    WRAP = 0x00000001,
    MIRROR = 0x00000002,
    CLAMP = 0x00000003,
    BORDER = 0x00000004,
    MIRROR_ONCE = 0x00000005,
}

enum D3D11_FORMAT_SUPPORT {
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
    TYPED_UNORDERED_ACCESS_VIEW = 0x02000000,
    SHADER_GATHER_COMPARISON = 0x04000000,
    DECODER_OUTPUT = 0x08000000,
    VIDEO_PROCESSOR_OUTPUT = 0x10000000,
    VIDEO_PROCESSOR_INPUT = 0x20000000,
    VIDEO_ENCODER = 0x40000000,
}

enum D3D11_FORMAT_SUPPORT2 {
    UAV_ATOMIC_ADD = 0x00000001,
    UAV_ATOMIC_BITWISE_OPS = 0x00000002,
    UAV_ATOMIC_COMPARE_STORE_OR_COMPARE_EXCHANGE = 0x00000004,
    UAV_ATOMIC_EXCHANGE = 0x00000008,
    UAV_ATOMIC_SIGNED_MIN_OR_MAX = 0x00000010,
    UAV_ATOMIC_UNSIGNED_MIN_OR_MAX = 0x00000020,
    UAV_TYPED_LOAD = 0x00000040,
    UAV_TYPED_STORE = 0x00000080,
    OUTPUT_MERGER_LOGIC_OP = 0x00000100,
    TILED = 0x00000200,
    SHAREABLE = 0x00000400,
    MULTIPLANE_OVERLAY = 0x00004000,
}

enum D3D11_ASYNC_GETDATA_FLAG {
    DONOTFLUSH = 0x00000001,
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

enum D3D11_QUERY_MISC_FLAG {
    PREDICATEHINT = 0x00000001,
}

enum D3D11_COUNTER {
    DEVICE_DEPENDENT_0 = 0x40000000,
}

enum D3D11_STANDARD_MULTISAMPLE_QUALITY_LEVELS {
    D3D11_STANDARD_MULTISAMPLE_PATTERN = -0x0000001,
    D3D11_CENTER_MULTISAMPLE_PATTERN = -0x0000002,
}

enum D3D11_SHADER_MIN_PRECISION_SUPPORT {
    D3D11_SHADER_MIN_PRECISION_10_BIT = 0x00000001,
    D3D11_SHADER_MIN_PRECISION_16_BIT = 0x00000002,
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

enum D3D11_SHADER_CACHE_SUPPORT_FLAGS {
    D3D11_SHADER_CACHE_SUPPORT_NONE = 0x00000000,
    D3D11_SHADER_CACHE_SUPPORT_AUTOMATIC_INPROC_CACHE = 0x00000001,
    D3D11_SHADER_CACHE_SUPPORT_AUTOMATIC_DISK_CACHE = 0x00000002,
}

enum D3D11_SHARED_RESOURCE_TIER {
    _0 = 0x00000000,
    _1 = 0x00000001,
    _2 = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_FORMAT_SUPPORT {
    INPUT = 0x00000001,
    OUTPUT = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_DEVICE_CAPS {
    LINEAR_SPACE = 0x00000001,
    xvYCC = 0x00000002,
    RGB_RANGE_CONVERSION = 0x00000004,
    YCbCr_MATRIX_CONVERSION = 0x00000008,
    NOMINAL_RANGE = 0x00000010,
}

enum D3D11_VIDEO_PROCESSOR_FEATURE_CAPS {
    ALPHA_FILL = 0x00000001,
    CONSTRICTION = 0x00000002,
    LUMA_KEY = 0x00000004,
    ALPHA_PALETTE = 0x00000008,
    LEGACY = 0x00000010,
    STEREO = 0x00000020,
    ROTATION = 0x00000040,
    ALPHA_STREAM = 0x00000080,
    PIXEL_ASPECT_RATIO = 0x00000100,
    MIRROR = 0x00000200,
    SHADER_USAGE = 0x00000400,
    METADATA_HDR10 = 0x00000800,
}

enum D3D11_VIDEO_PROCESSOR_FILTER_CAPS {
    BRIGHTNESS = 0x00000001,
    CONTRAST = 0x00000002,
    HUE = 0x00000004,
    SATURATION = 0x00000008,
    NOISE_REDUCTION = 0x00000010,
    EDGE_ENHANCEMENT = 0x00000020,
    ANAMORPHIC_SCALING = 0x00000040,
    STEREO_ADJUSTMENT = 0x00000080,
}

enum D3D11_VIDEO_PROCESSOR_FORMAT_CAPS {
    RGB_INTERLACED = 0x00000001,
    RGB_PROCAMP = 0x00000002,
    RGB_LUMA_KEY = 0x00000004,
    PALETTE_INTERLACED = 0x00000008,
}

enum D3D11_VIDEO_PROCESSOR_AUTO_STREAM_CAPS {
    DENOISE = 0x00000001,
    DERINGING = 0x00000002,
    EDGE_ENHANCEMENT = 0x00000004,
    COLOR_CORRECTION = 0x00000008,
    FLESH_TONE_MAPPING = 0x00000010,
    IMAGE_STABILIZATION = 0x00000020,
    SUPER_RESOLUTION = 0x00000040,
    ANAMORPHIC_SCALING = 0x00000080,
}

enum D3D11_VIDEO_PROCESSOR_STEREO_CAPS {
    MONO_OFFSET = 0x00000001,
    ROW_INTERLEAVED = 0x00000002,
    COLUMN_INTERLEAVED = 0x00000004,
    CHECKERBOARD = 0x00000008,
    FLIP_MODE = 0x00000010,
}

enum D3D11_VIDEO_PROCESSOR_PROCESSOR_CAPS {
    DEINTERLACE_BLEND = 0x00000001,
    DEINTERLACE_BOB = 0x00000002,
    DEINTERLACE_ADAPTIVE = 0x00000004,
    DEINTERLACE_MOTION_COMPENSATION = 0x00000008,
    INVERSE_TELECINE = 0x00000010,
    FRAME_RATE_CONVERSION = 0x00000020,
}

enum D3D11_VIDEO_PROCESSOR_ITELECINE_CAPS {
    _32 = 0x00000001,
    _22 = 0x00000002,
    _2224 = 0x00000004,
    _2332 = 0x00000008,
    _32322 = 0x00000010,
    _55 = 0x00000020,
    _64 = 0x00000040,
    _87 = 0x00000080,
    _222222222223 = 0x00000100,
    OTHER = -0x80000000,
}

enum D3D11_CONTENT_PROTECTION_CAPS {
    SOFTWARE = 0x00000001,
    HARDWARE = 0x00000002,
    PROTECTION_ALWAYS_ON = 0x00000004,
    PARTIAL_DECRYPTION = 0x00000008,
    CONTENT_KEY = 0x00000010,
    FRESHEN_SESSION_KEY = 0x00000020,
    ENCRYPTED_READ_BACK = 0x00000040,
    ENCRYPTED_READ_BACK_KEY = 0x00000080,
    SEQUENTIAL_CTR_IV = 0x00000100,
    ENCRYPT_SLICEDATA_ONLY = 0x00000200,
    DECRYPTION_BLT = 0x00000400,
    HARDWARE_PROTECT_UNCOMPRESSED = 0x00000800,
    HARDWARE_PROTECTED_MEMORY_PAGEABLE = 0x00001000,
    HARDWARE_TEARDOWN = 0x00002000,
    HARDWARE_DRM_COMMUNICATION = 0x00004000,
    HARDWARE_DRM_COMMUNICATION_MULTI_THREADED = 0x00008000,
}

enum D3D11_VIDEO_USAGE {
    PLAYBACK_NORMAL = 0x00000000,
    OPTIMAL_SPEED = 0x00000001,
    OPTIMAL_QUALITY = 0x00000002,
}

enum D3D11_VIDEO_PROCESSOR_NOMINAL_RANGE {
    UNDEFINED = 0x00000000,
    _16_235 = 0x00000001,
    _0_255 = 0x00000002,
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

enum D3D11_CREATE_DEVICE_FLAG {
    SINGLETHREADED = 0x00000001,
    DEBUG = 0x00000002,
    SWITCH_TO_REF = 0x00000004,
    PREVENT_INTERNAL_THREADING_OPTIMIZATIONS = 0x00000008,
    BGRA_SUPPORT = 0x00000020,
    DEBUGGABLE = 0x00000040,
    PREVENT_ALTERING_LAYER_SETTINGS_FROM_REGISTRY = 0x00000080,
    DISABLE_GPU_TIMEOUT = 0x00000100,
    VIDEO_SUPPORT = 0x00000800,
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

// d3d11.h: 1387
interface ID3D11DeviceChild: IUnknown {
    static immutable iidof = GUID(0x1841e5c8, 0x16b0, 0x489b, [0xbc, 0xc8, 0x44, 0xcf, 0xb0, 0xd5, 0xde, 0xae]);
    extern(C) void GetDevice(ID3D11Device** ppDevice);
    extern(C) int GetPrivateData(_GUID* guid, uint* pDataSize, void* pData);
    extern(C) int SetPrivateData(_GUID* guid, uint DataSize, void* pData);
    extern(C) int SetPrivateDataInterface(_GUID* guid, IUnknown* pData);
}

// d3d11.h: 1643
interface ID3D11DepthStencilState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x03823efb, 0x8d8f, 0x4e1c, [0x9a, 0xa2, 0xf6, 0x4b, 0xb2, 0xcb, 0xfd, 0xf1]);
    extern(C) void GetDesc(D3D11_DEPTH_STENCIL_DESC* pDesc);
}

// d3d11.h: 1866
interface ID3D11BlendState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x75b68faa, 0x347d, 0x4159, [0x8f, 0x45, 0xa0, 0x64, 0x0f, 0x01, 0xcd, 0x9a]);
    extern(C) void GetDesc(D3D11_BLEND_DESC* pDesc);
}

// d3d11.h: 2062
interface ID3D11RasterizerState: ID3D11DeviceChild {
    static immutable iidof = GUID(0x9bb4ab81, 0xab1a, 0x4d8f, [0xb5, 0x06, 0xfc, 0x04, 0x20, 0x0b, 0x6e, 0xe7]);
    extern(C) void GetDesc(D3D11_RASTERIZER_DESC* pDesc);
}

// d3d11.h: 2215
interface ID3D11Resource: ID3D11DeviceChild {
    static immutable iidof = GUID(0xdc8e63f3, 0xd12b, 0x4952, [0xb4, 0x7b, 0x5e, 0x45, 0x02, 0x6a, 0x86, 0x2d]);
    extern(C) void GetType(D3D11_RESOURCE_DIMENSION* pResourceDimension);
    extern(C) void SetEvictionPriority(uint EvictionPriority);
    extern(C) uint GetEvictionPriority();
}

// d3d11.h: 2406
interface ID3D11Buffer: ID3D11Resource {
    static immutable iidof = GUID(0x48570b85, 0xd1ee, 0x4fcd, [0xa2, 0x50, 0xeb, 0x35, 0x07, 0x22, 0xb0, 0x37]);
    extern(C) void GetDesc(D3D11_BUFFER_DESC* pDesc);
}

// d3d11.h: 2606
interface ID3D11Texture1D: ID3D11Resource {
    static immutable iidof = GUID(0xf8fb5c27, 0xc6b3, 0x4f75, [0xa4, 0xc8, 0x43, 0x9a, 0xf2, 0xef, 0x56, 0x4c]);
    extern(C) void GetDesc(D3D11_TEXTURE1D_DESC* pDesc);
}

// d3d11.h: 2814
interface ID3D11Texture2D: ID3D11Resource {
    static immutable iidof = GUID(0x6f15aaf2, 0xd208, 0x4e89, [0x9a, 0xb4, 0x48, 0x95, 0x35, 0xd3, 0x4f, 0x9c]);
    extern(C) void GetDesc(D3D11_TEXTURE2D_DESC* pDesc);
}

// d3d11.h: 3017
interface ID3D11Texture3D: ID3D11Resource {
    static immutable iidof = GUID(0x037e866e, 0xf56d, 0x4357, [0xa8, 0xaf, 0x9d, 0xab, 0xbe, 0x6e, 0x25, 0x0e]);
    extern(C) void GetDesc(D3D11_TEXTURE3D_DESC* pDesc);
}

// d3d11.h: 3184
interface ID3D11View: ID3D11DeviceChild {
    static immutable iidof = GUID(0x839d1216, 0xbb2e, 0x412b, [0xb7, 0xf4, 0xa9, 0xdb, 0xeb, 0xe0, 0x8e, 0xd1]);
    extern(C) void GetResource(ID3D11Resource** ppResource);
}

// d3d11.h: 3628
interface ID3D11ShaderResourceView: ID3D11View {
    static immutable iidof = GUID(0xb0e06fe0, 0x8192, 0x4e1a, [0xb1, 0xca, 0x36, 0xd7, 0x41, 0x47, 0x10, 0xb2]);
    extern(C) void GetDesc(D3D11_SHADER_RESOURCE_VIEW_DESC* pDesc);
}

// d3d11.h: 4002
interface ID3D11RenderTargetView: ID3D11View {
    static immutable iidof = GUID(0xdfdba067, 0x0b8d, 0x4865, [0x87, 0x5b, 0xd7, 0xb4, 0x51, 0x6c, 0xc1, 0x64]);
    extern(C) void GetDesc(D3D11_RENDER_TARGET_VIEW_DESC* pDesc);
}

// d3d11.h: 4473
interface ID3D11DepthStencilView: ID3D11View {
    static immutable iidof = GUID(0x9fdac92a, 0x1876, 0x48c3, [0xaf, 0xad, 0x25, 0xb9, 0x4f, 0x84, 0xa9, 0xb6]);
    extern(C) void GetDesc(D3D11_DEPTH_STENCIL_VIEW_DESC* pDesc);
}

// d3d11.h: 4825
interface ID3D11UnorderedAccessView: ID3D11View {
    static immutable iidof = GUID(0x28acf509, 0x7f5c, 0x48f6, [0x86, 0x11, 0xf3, 0x16, 0x01, 0x0a, 0x63, 0x80]);
    extern(C) void GetDesc(D3D11_UNORDERED_ACCESS_VIEW_DESC* pDesc);
}

// d3d11.h: 4959
interface ID3D11VertexShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3b301d64, 0xd678, 0x4289, [0x88, 0x97, 0x22, 0xf8, 0x92, 0x8b, 0x72, 0xf3]);
}

// d3d11.h: 5072
interface ID3D11HullShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x8e5c6061, 0x628a, 0x4c8e, [0x82, 0x64, 0xbb, 0xe4, 0x5c, 0xb3, 0xd5, 0xdd]);
}

// d3d11.h: 5185
interface ID3D11DomainShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0xf582c508, 0x0f36, 0x490c, [0x99, 0x77, 0x31, 0xee, 0xce, 0x26, 0x8c, 0xfa]);
}

// d3d11.h: 5298
interface ID3D11GeometryShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x38325b96, 0xeffb, 0x4022, [0xba, 0x02, 0x2e, 0x79, 0x5b, 0x70, 0x27, 0x5c]);
}

// d3d11.h: 5411
interface ID3D11PixelShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0xea82e40d, 0x51dc, 0x4f33, [0x93, 0xd4, 0xdb, 0x7c, 0x91, 0x25, 0xae, 0x8c]);
}

// d3d11.h: 5524
interface ID3D11ComputeShader: ID3D11DeviceChild {
    static immutable iidof = GUID(0x4f5b196e, 0xc2bd, 0x495e, [0xbd, 0x01, 0x1f, 0xde, 0xd3, 0x8e, 0x49, 0x69]);
}

// d3d11.h: 5637
interface ID3D11InputLayout: ID3D11DeviceChild {
    static immutable iidof = GUID(0xe4819ddc, 0x4cf0, 0x4025, [0xbd, 0x26, 0x5d, 0xe8, 0x2a, 0x3e, 0x07, 0xb7]);
}

// d3d11.h: 5947
interface ID3D11SamplerState: ID3D11DeviceChild {
    static immutable iidof = GUID(0xda6fea51, 0x564c, 0x4487, [0x98, 0x10, 0xf0, 0xd0, 0xf9, 0xb4, 0xe3, 0xa5]);
    extern(C) void GetDesc(D3D11_SAMPLER_DESC* pDesc);
}

// d3d11.h: 6133
interface ID3D11Asynchronous: ID3D11DeviceChild {
    static immutable iidof = GUID(0x4b35d0cd, 0x1e15, 0x4258, [0x9c, 0x98, 0x1b, 0x13, 0x33, 0xf6, 0xdd, 0x3b]);
    extern(C) uint GetDataSize();
}

// d3d11.h: 6321
interface ID3D11Query: ID3D11Asynchronous {
    static immutable iidof = GUID(0xd6c00747, 0x87b7, 0x425e, [0xb8, 0x4d, 0x44, 0xd1, 0x08, 0x56, 0x0a, 0xfd]);
    extern(C) void GetDesc(D3D11_QUERY_DESC* pDesc);
}

// d3d11.h: 6453
interface ID3D11Predicate: ID3D11Query {
    static immutable iidof = GUID(0x9eb576dd, 0x9f77, 0x4d86, [0x81, 0xaa, 0x8b, 0xab, 0x5f, 0xe4, 0x90, 0xe2]);
}

// d3d11.h: 6665
interface ID3D11Counter: ID3D11Asynchronous {
    static immutable iidof = GUID(0x6e8c49fb, 0xa371, 0x4770, [0xb4, 0x40, 0x29, 0x08, 0x60, 0x22, 0xb7, 0x41]);
    extern(C) void GetDesc(D3D11_COUNTER_DESC* pDesc);
}

// d3d11.h: 6831
interface ID3D11ClassInstance: ID3D11DeviceChild {
    static immutable iidof = GUID(0xa6cd7faa, 0xb0b7, 0x4a2f, [0x94, 0x36, 0x86, 0x62, 0xa6, 0x57, 0x97, 0xcb]);
    extern(C) void GetClassLinkage(ID3D11ClassLinkage** ppLinkage);
    extern(C) void GetDesc(D3D11_CLASS_INSTANCE_DESC* pDesc);
    extern(C) void GetInstanceName(byte* pInstanceName, ulong* pBufferLength);
    extern(C) void GetTypeName(byte* pTypeName, ulong* pBufferLength);
}

// d3d11.h: 7000
interface ID3D11ClassLinkage: ID3D11DeviceChild {
    static immutable iidof = GUID(0xddf57cba, 0x9543, 0x46e4, [0xa1, 0x2b, 0xf2, 0x07, 0xa0, 0xfe, 0x7f, 0xed]);
    extern(C) int GetClassInstance(byte* pClassInstanceName, uint InstanceIndex, ID3D11ClassInstance** ppInstance);
    extern(C) int CreateClassInstance(byte* pClassTypeName, uint ConstantBufferOffset, uint ConstantVectorOffset, uint TextureOffset, uint SamplerOffset, ID3D11ClassInstance** ppInstance);
}

// d3d11.h: 7165
interface ID3D11CommandList: ID3D11DeviceChild {
    static immutable iidof = GUID(0xa24bc4d1, 0x769e, 0x43f7, [0x80, 0x13, 0x98, 0xff, 0x56, 0x6c, 0x18, 0xe2]);
    extern(C) uint GetContextFlags();
}

// d3d11.h: 7499
interface ID3D11DeviceContext: ID3D11DeviceChild {
    static immutable iidof = GUID(0xc0bfa96c, 0xe089, 0x44fb, [0x8e, 0xaf, 0x26, 0xf8, 0x79, 0x61, 0x90, 0xda]);
    extern(C) void VSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void PSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void PSSetShader(ID3D11PixelShader* pPixelShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void PSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void VSSetShader(ID3D11VertexShader* pVertexShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void DrawIndexed(uint IndexCount, uint StartIndexLocation, int BaseVertexLocation);
    extern(C) void Draw(uint VertexCount, uint StartVertexLocation);
    extern(C) int Map(ID3D11Resource* pResource, uint Subresource, D3D11_MAP MapType, uint MapFlags, D3D11_MAPPED_SUBRESOURCE* pMappedResource);
    extern(C) void Unmap(ID3D11Resource* pResource, uint Subresource);
    extern(C) void PSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void IASetInputLayout(ID3D11InputLayout* pInputLayout);
    extern(C) void IASetVertexBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppVertexBuffers, uint* pStrides, uint* pOffsets);
    extern(C) void IASetIndexBuffer(ID3D11Buffer* pIndexBuffer, DXGI_FORMAT Format, uint Offset);
    extern(C) void DrawIndexedInstanced(uint IndexCountPerInstance, uint InstanceCount, uint StartIndexLocation, int BaseVertexLocation, uint StartInstanceLocation);
    extern(C) void DrawInstanced(uint VertexCountPerInstance, uint InstanceCount, uint StartVertexLocation, uint StartInstanceLocation);
    extern(C) void GSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void GSSetShader(ID3D11GeometryShader* pShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void IASetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY Topology);
    extern(C) void VSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void VSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void Begin(ID3D11Asynchronous* pAsync);
    extern(C) void End(ID3D11Asynchronous* pAsync);
    extern(C) int GetData(ID3D11Asynchronous* pAsync, void* pData, uint DataSize, uint GetDataFlags);
    extern(C) void SetPredication(ID3D11Predicate* pPredicate, int PredicateValue);
    extern(C) void GSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void GSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void OMSetRenderTargets(uint NumViews, ID3D11RenderTargetView** ppRenderTargetViews, ID3D11DepthStencilView* pDepthStencilView);
    extern(C) void OMSetRenderTargetsAndUnorderedAccessViews(uint NumRTVs, ID3D11RenderTargetView** ppRenderTargetViews, ID3D11DepthStencilView* pDepthStencilView, uint UAVStartSlot, uint NumUAVs, ID3D11UnorderedAccessView** ppUnorderedAccessViews, uint* pUAVInitialCounts);
    extern(C) void OMSetBlendState(ID3D11BlendState* pBlendState, float* BlendFactor, uint SampleMask);
    extern(C) void OMSetDepthStencilState(ID3D11DepthStencilState* pDepthStencilState, uint StencilRef);
    extern(C) void SOSetTargets(uint NumBuffers, ID3D11Buffer** ppSOTargets, uint* pOffsets);
    extern(C) void DrawAuto();
    extern(C) void DrawIndexedInstancedIndirect(ID3D11Buffer* pBufferForArgs, uint AlignedByteOffsetForArgs);
    extern(C) void DrawInstancedIndirect(ID3D11Buffer* pBufferForArgs, uint AlignedByteOffsetForArgs);
    extern(C) void Dispatch(uint ThreadGroupCountX, uint ThreadGroupCountY, uint ThreadGroupCountZ);
    extern(C) void DispatchIndirect(ID3D11Buffer* pBufferForArgs, uint AlignedByteOffsetForArgs);
    extern(C) void RSSetState(ID3D11RasterizerState* pRasterizerState);
    extern(C) void RSSetViewports(uint NumViewports, D3D11_VIEWPORT* pViewports);
    extern(C) void RSSetScissorRects(uint NumRects, tagRECT* pRects);
    extern(C) void CopySubresourceRegion(ID3D11Resource* pDstResource, uint DstSubresource, uint DstX, uint DstY, uint DstZ, ID3D11Resource* pSrcResource, uint SrcSubresource, D3D11_BOX* pSrcBox);
    extern(C) void CopyResource(ID3D11Resource* pDstResource, ID3D11Resource* pSrcResource);
    extern(C) void UpdateSubresource(ID3D11Resource* pDstResource, uint DstSubresource, D3D11_BOX* pDstBox, void* pSrcData, uint SrcRowPitch, uint SrcDepthPitch);
    extern(C) void CopyStructureCount(ID3D11Buffer* pDstBuffer, uint DstAlignedByteOffset, ID3D11UnorderedAccessView* pSrcView);
    extern(C) void ClearRenderTargetView(ID3D11RenderTargetView* pRenderTargetView, float* ColorRGBA);
    extern(C) void ClearUnorderedAccessViewUint(ID3D11UnorderedAccessView* pUnorderedAccessView, uint* Values);
    extern(C) void ClearUnorderedAccessViewFloat(ID3D11UnorderedAccessView* pUnorderedAccessView, float* Values);
    extern(C) void ClearDepthStencilView(ID3D11DepthStencilView* pDepthStencilView, uint ClearFlags, float Depth, ubyte Stencil);
    extern(C) void GenerateMips(ID3D11ShaderResourceView* pShaderResourceView);
    extern(C) void SetResourceMinLOD(ID3D11Resource* pResource, float MinLOD);
    extern(C) float GetResourceMinLOD(ID3D11Resource* pResource);
    extern(C) void ResolveSubresource(ID3D11Resource* pDstResource, uint DstSubresource, ID3D11Resource* pSrcResource, uint SrcSubresource, DXGI_FORMAT Format);
    extern(C) void ExecuteCommandList(ID3D11CommandList* pCommandList, int RestoreContextState);
    extern(C) void HSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void HSSetShader(ID3D11HullShader* pHullShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void HSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void HSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void DSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void DSSetShader(ID3D11DomainShader* pDomainShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void DSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void DSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void CSSetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void CSSetUnorderedAccessViews(uint StartSlot, uint NumUAVs, ID3D11UnorderedAccessView** ppUnorderedAccessViews, uint* pUAVInitialCounts);
    extern(C) void CSSetShader(ID3D11ComputeShader* pComputeShader, ID3D11ClassInstance** ppClassInstances, uint NumClassInstances);
    extern(C) void CSSetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void CSSetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void VSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void PSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void PSGetShader(ID3D11PixelShader** ppPixelShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void PSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void VSGetShader(ID3D11VertexShader** ppVertexShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void PSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void IAGetInputLayout(ID3D11InputLayout** ppInputLayout);
    extern(C) void IAGetVertexBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppVertexBuffers, uint* pStrides, uint* pOffsets);
    extern(C) void IAGetIndexBuffer(ID3D11Buffer** pIndexBuffer, DXGI_FORMAT* Format, uint* Offset);
    extern(C) void GSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void GSGetShader(ID3D11GeometryShader** ppGeometryShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void IAGetPrimitiveTopology(D3D_PRIMITIVE_TOPOLOGY* pTopology);
    extern(C) void VSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void VSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void GetPredication(ID3D11Predicate** ppPredicate, int* pPredicateValue);
    extern(C) void GSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void GSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void OMGetRenderTargets(uint NumViews, ID3D11RenderTargetView** ppRenderTargetViews, ID3D11DepthStencilView** ppDepthStencilView);
    extern(C) void OMGetRenderTargetsAndUnorderedAccessViews(uint NumRTVs, ID3D11RenderTargetView** ppRenderTargetViews, ID3D11DepthStencilView** ppDepthStencilView, uint UAVStartSlot, uint NumUAVs, ID3D11UnorderedAccessView** ppUnorderedAccessViews);
    extern(C) void OMGetBlendState(ID3D11BlendState** ppBlendState, float* BlendFactor, uint* pSampleMask);
    extern(C) void OMGetDepthStencilState(ID3D11DepthStencilState** ppDepthStencilState, uint* pStencilRef);
    extern(C) void SOGetTargets(uint NumBuffers, ID3D11Buffer** ppSOTargets);
    extern(C) void RSGetState(ID3D11RasterizerState** ppRasterizerState);
    extern(C) void RSGetViewports(uint* pNumViewports, D3D11_VIEWPORT* pViewports);
    extern(C) void RSGetScissorRects(uint* pNumRects, tagRECT* pRects);
    extern(C) void HSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void HSGetShader(ID3D11HullShader** ppHullShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void HSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void HSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void DSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void DSGetShader(ID3D11DomainShader** ppDomainShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void DSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void DSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void CSGetShaderResources(uint StartSlot, uint NumViews, ID3D11ShaderResourceView** ppShaderResourceViews);
    extern(C) void CSGetUnorderedAccessViews(uint StartSlot, uint NumUAVs, ID3D11UnorderedAccessView** ppUnorderedAccessViews);
    extern(C) void CSGetShader(ID3D11ComputeShader** ppComputeShader, ID3D11ClassInstance** ppClassInstances, uint* pNumClassInstances);
    extern(C) void CSGetSamplers(uint StartSlot, uint NumSamplers, ID3D11SamplerState** ppSamplers);
    extern(C) void CSGetConstantBuffers(uint StartSlot, uint NumBuffers, ID3D11Buffer** ppConstantBuffers);
    extern(C) void ClearState();
    extern(C) void Flush();
    extern(C) D3D11_DEVICE_CONTEXT_TYPE GetType();
    extern(C) uint GetContextFlags();
    extern(C) int FinishCommandList(int RestoreDeferredContextState, ID3D11CommandList** ppCommandList);
}

// d3d11.h: 9789
interface ID3D11VideoDecoder: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3c9c5b51, 0x995d, 0x48d1, [0x9b, 0x8d, 0xfa, 0x5c, 0xae, 0xde, 0xd6, 0x5c]);
    extern(C) int GetCreationParameters(D3D11_VIDEO_DECODER_DESC* pVideoDesc, D3D11_VIDEO_DECODER_CONFIG* pConfig);
    extern(C) int GetDriverHandle(void** pDriverHandle);
}

// d3d11.h: 10156
interface ID3D11VideoProcessorEnumerator: ID3D11DeviceChild {
    static immutable iidof = GUID(0x31627037, 0x53ab, 0x4200, [0x90, 0x61, 0x05, 0xfa, 0xa9, 0xab, 0x45, 0xf9]);
    extern(C) int GetVideoProcessorContentDesc(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* pContentDesc);
    extern(C) int CheckVideoProcessorFormat(DXGI_FORMAT Format, uint* pFlags);
    extern(C) int GetVideoProcessorCaps(D3D11_VIDEO_PROCESSOR_CAPS* pCaps);
    extern(C) int GetVideoProcessorRateConversionCaps(uint TypeIndex, D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS* pCaps);
    extern(C) int GetVideoProcessorCustomRate(uint TypeIndex, uint CustomRateIndex, D3D11_VIDEO_PROCESSOR_CUSTOM_RATE* pRate);
    extern(C) int GetVideoProcessorFilterRange(D3D11_VIDEO_PROCESSOR_FILTER Filter, D3D11_VIDEO_PROCESSOR_FILTER_RANGE* pRange);
}

// d3d11.h: 10478
interface ID3D11VideoProcessor: ID3D11DeviceChild {
    static immutable iidof = GUID(0x1d7b0652, 0x185f, 0x41c6, [0x85, 0xce, 0x0c, 0x5b, 0xe3, 0xd4, 0xae, 0x6c]);
    extern(C) void GetContentDesc(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* pDesc);
    extern(C) void GetRateConversionCaps(D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS* pCaps);
}

// d3d11.h: 10636
interface ID3D11AuthenticatedChannel: ID3D11DeviceChild {
    static immutable iidof = GUID(0x3015a308, 0xdcbd, 0x47aa, [0xa7, 0x47, 0x19, 0x24, 0x86, 0xd1, 0x4d, 0x4a]);
    extern(C) int GetCertificateSize(uint* pCertificateSize);
    extern(C) int GetCertificate(uint CertificateSize, ubyte* pCertificate);
    extern(C) void GetChannelHandle(void** pChannelHandle);
}

// d3d11.h: 11042
interface ID3D11CryptoSession: ID3D11DeviceChild {
    static immutable iidof = GUID(0x9b32f9ad, 0xbdcc, 0x40a6, [0xa3, 0x9d, 0xd5, 0xc8, 0x65, 0x84, 0x57, 0x20]);
    extern(C) void GetCryptoType(_GUID* pCryptoType);
    extern(C) void GetDecoderProfile(_GUID* pDecoderProfile);
    extern(C) int GetCertificateSize(uint* pCertificateSize);
    extern(C) int GetCertificate(uint CertificateSize, ubyte* pCertificate);
    extern(C) void GetCryptoSessionHandle(void** pCryptoSessionHandle);
}

// d3d11.h: 11249
interface ID3D11VideoDecoderOutputView: ID3D11View {
    static immutable iidof = GUID(0xc2931aea, 0x2a85, 0x4f20, [0x86, 0x0f, 0xfb, 0xa1, 0xfd, 0x25, 0x6e, 0x18]);
    extern(C) void GetDesc(D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC* pDesc);
}

// d3d11.h: 11414
interface ID3D11VideoProcessorInputView: ID3D11View {
    static immutable iidof = GUID(0x11ec5a5f, 0x51dc, 0x4945, [0xab, 0x34, 0x6e, 0x8c, 0x21, 0x30, 0x0e, 0xa5]);
    extern(C) void GetDesc(D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC* pDesc);
}

// d3d11.h: 11586
interface ID3D11VideoProcessorOutputView: ID3D11View {
    static immutable iidof = GUID(0xa048285e, 0x25a9, 0x4527, [0xbd, 0x93, 0xd6, 0x8b, 0x68, 0xc4, 0x42, 0x54]);
    extern(C) void GetDesc(D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC* pDesc);
}

// d3d11.h: 11720
interface ID3D11VideoContext: ID3D11DeviceChild {
    static immutable iidof = GUID(0x61f21c45, 0x3c0e, 0x4a74, [0x9c, 0xea, 0x67, 0x10, 0x0d, 0x9a, 0xd5, 0xe4]);
    extern(C) int GetDecoderBuffer(ID3D11VideoDecoder* pDecoder, D3D11_VIDEO_DECODER_BUFFER_TYPE Type, uint* pBufferSize, void** ppBuffer);
    extern(C) int ReleaseDecoderBuffer(ID3D11VideoDecoder* pDecoder, D3D11_VIDEO_DECODER_BUFFER_TYPE Type);
    extern(C) int DecoderBeginFrame(ID3D11VideoDecoder* pDecoder, ID3D11VideoDecoderOutputView* pView, uint ContentKeySize, void* pContentKey);
    extern(C) int DecoderEndFrame(ID3D11VideoDecoder* pDecoder);
    extern(C) int SubmitDecoderBuffers(ID3D11VideoDecoder* pDecoder, uint NumBuffers, D3D11_VIDEO_DECODER_BUFFER_DESC* pBufferDesc);
    extern(C) int DecoderExtension(ID3D11VideoDecoder* pDecoder, D3D11_VIDEO_DECODER_EXTENSION* pExtensionData);
    extern(C) void VideoProcessorSetOutputTargetRect(ID3D11VideoProcessor* pVideoProcessor, int Enable, tagRECT* pRect);
    extern(C) void VideoProcessorSetOutputBackgroundColor(ID3D11VideoProcessor* pVideoProcessor, int YCbCr, D3D11_VIDEO_COLOR* pColor);
    extern(C) void VideoProcessorSetOutputColorSpace(ID3D11VideoProcessor* pVideoProcessor, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* pColorSpace);
    extern(C) void VideoProcessorSetOutputAlphaFillMode(ID3D11VideoProcessor* pVideoProcessor, D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE AlphaFillMode, uint StreamIndex);
    extern(C) void VideoProcessorSetOutputConstriction(ID3D11VideoProcessor* pVideoProcessor, int Enable, tagSIZE Size);
    extern(C) void VideoProcessorSetOutputStereoMode(ID3D11VideoProcessor* pVideoProcessor, int Enable);
    extern(C) int VideoProcessorSetOutputExtension(ID3D11VideoProcessor* pVideoProcessor, _GUID* pExtensionGuid, uint DataSize, void* pData);
    extern(C) void VideoProcessorGetOutputTargetRect(ID3D11VideoProcessor* pVideoProcessor, int* Enabled, tagRECT* pRect);
    extern(C) void VideoProcessorGetOutputBackgroundColor(ID3D11VideoProcessor* pVideoProcessor, int* pYCbCr, D3D11_VIDEO_COLOR* pColor);
    extern(C) void VideoProcessorGetOutputColorSpace(ID3D11VideoProcessor* pVideoProcessor, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* pColorSpace);
    extern(C) void VideoProcessorGetOutputAlphaFillMode(ID3D11VideoProcessor* pVideoProcessor, D3D11_VIDEO_PROCESSOR_ALPHA_FILL_MODE* pAlphaFillMode, uint* pStreamIndex);
    extern(C) void VideoProcessorGetOutputConstriction(ID3D11VideoProcessor* pVideoProcessor, int* pEnabled, tagSIZE* pSize);
    extern(C) void VideoProcessorGetOutputStereoMode(ID3D11VideoProcessor* pVideoProcessor, int* pEnabled);
    extern(C) int VideoProcessorGetOutputExtension(ID3D11VideoProcessor* pVideoProcessor, _GUID* pExtensionGuid, uint DataSize, void* pData);
    extern(C) void VideoProcessorSetStreamFrameFormat(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_FRAME_FORMAT FrameFormat);
    extern(C) void VideoProcessorSetStreamColorSpace(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* pColorSpace);
    extern(C) void VideoProcessorSetStreamOutputRate(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_OUTPUT_RATE OutputRate, int RepeatFrame, DXGI_RATIONAL* pCustomRate);
    extern(C) void VideoProcessorSetStreamSourceRect(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, tagRECT* pRect);
    extern(C) void VideoProcessorSetStreamDestRect(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, tagRECT* pRect);
    extern(C) void VideoProcessorSetStreamAlpha(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, float Alpha);
    extern(C) void VideoProcessorSetStreamPalette(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, uint Count, uint* pEntries);
    extern(C) void VideoProcessorSetStreamPixelAspectRatio(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, DXGI_RATIONAL* pSourceAspectRatio, DXGI_RATIONAL* pDestinationAspectRatio);
    extern(C) void VideoProcessorSetStreamLumaKey(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, float Lower, float Upper);
    extern(C) void VideoProcessorSetStreamStereoFormat(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, D3D11_VIDEO_PROCESSOR_STEREO_FORMAT Format, int LeftViewFrame0, int BaseViewFrame0, D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE FlipMode, int MonoOffset);
    extern(C) void VideoProcessorSetStreamAutoProcessingMode(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable);
    extern(C) void VideoProcessorSetStreamFilter(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_FILTER Filter, int Enable, int Level);
    extern(C) int VideoProcessorSetStreamExtension(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, _GUID* pExtensionGuid, uint DataSize, void* pData);
    extern(C) void VideoProcessorGetStreamFrameFormat(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_FRAME_FORMAT* pFrameFormat);
    extern(C) void VideoProcessorGetStreamColorSpace(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_COLOR_SPACE* pColorSpace);
    extern(C) void VideoProcessorGetStreamOutputRate(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_OUTPUT_RATE* pOutputRate, int* pRepeatFrame, DXGI_RATIONAL* pCustomRate);
    extern(C) void VideoProcessorGetStreamSourceRect(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled, tagRECT* pRect);
    extern(C) void VideoProcessorGetStreamDestRect(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled, tagRECT* pRect);
    extern(C) void VideoProcessorGetStreamAlpha(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled, float* pAlpha);
    extern(C) void VideoProcessorGetStreamPalette(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, uint Count, uint* pEntries);
    extern(C) void VideoProcessorGetStreamPixelAspectRatio(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled, DXGI_RATIONAL* pSourceAspectRatio, DXGI_RATIONAL* pDestinationAspectRatio);
    extern(C) void VideoProcessorGetStreamLumaKey(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled, float* pLower, float* pUpper);
    extern(C) void VideoProcessorGetStreamStereoFormat(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnable, D3D11_VIDEO_PROCESSOR_STEREO_FORMAT* pFormat, int* pLeftViewFrame0, int* pBaseViewFrame0, D3D11_VIDEO_PROCESSOR_STEREO_FLIP_MODE* pFlipMode, int* MonoOffset);
    extern(C) void VideoProcessorGetStreamAutoProcessingMode(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnabled);
    extern(C) void VideoProcessorGetStreamFilter(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, D3D11_VIDEO_PROCESSOR_FILTER Filter, int* pEnabled, int* pLevel);
    extern(C) int VideoProcessorGetStreamExtension(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, _GUID* pExtensionGuid, uint DataSize, void* pData);
    extern(C) int VideoProcessorBlt(ID3D11VideoProcessor* pVideoProcessor, ID3D11VideoProcessorOutputView* pView, uint OutputFrame, uint StreamCount, D3D11_VIDEO_PROCESSOR_STREAM* pStreams);
    extern(C) int NegotiateCryptoSessionKeyExchange(ID3D11CryptoSession* pCryptoSession, uint DataSize, void* pData);
    extern(C) void EncryptionBlt(ID3D11CryptoSession* pCryptoSession, ID3D11Texture2D* pSrcSurface, ID3D11Texture2D* pDstSurface, uint IVSize, void* pIV);
    extern(C) void DecryptionBlt(ID3D11CryptoSession* pCryptoSession, ID3D11Texture2D* pSrcSurface, ID3D11Texture2D* pDstSurface, D3D11_ENCRYPTED_BLOCK_INFO* pEncryptedBlockInfo, uint ContentKeySize, void* pContentKey, uint IVSize, void* pIV);
    extern(C) void StartSessionKeyRefresh(ID3D11CryptoSession* pCryptoSession, uint RandomNumberSize, void* pRandomNumber);
    extern(C) void FinishSessionKeyRefresh(ID3D11CryptoSession* pCryptoSession);
    extern(C) int GetEncryptionBltKey(ID3D11CryptoSession* pCryptoSession, uint KeySize, void* pReadbackKey);
    extern(C) int NegotiateAuthenticatedChannelKeyExchange(ID3D11AuthenticatedChannel* pChannel, uint DataSize, void* pData);
    extern(C) int QueryAuthenticatedChannel(ID3D11AuthenticatedChannel* pChannel, uint InputSize, void* pInput, uint OutputSize, void* pOutput);
    extern(C) int ConfigureAuthenticatedChannel(ID3D11AuthenticatedChannel* pChannel, uint InputSize, void* pInput, D3D11_AUTHENTICATED_CONFIGURE_OUTPUT* pOutput);
    extern(C) void VideoProcessorSetStreamRotation(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int Enable, D3D11_VIDEO_PROCESSOR_ROTATION Rotation);
    extern(C) void VideoProcessorGetStreamRotation(ID3D11VideoProcessor* pVideoProcessor, uint StreamIndex, int* pEnable, D3D11_VIDEO_PROCESSOR_ROTATION* pRotation);
}

// d3d11.h: 13173
interface ID3D11VideoDevice: IUnknown {
    static immutable iidof = GUID(0x10ec4d5b, 0x975a, 0x4689, [0xb9, 0xe4, 0xd0, 0xaa, 0xc3, 0x0f, 0xe3, 0x33]);
    extern(C) int CreateVideoDecoder(D3D11_VIDEO_DECODER_DESC* pVideoDesc, D3D11_VIDEO_DECODER_CONFIG* pConfig, ID3D11VideoDecoder** ppDecoder);
    extern(C) int CreateVideoProcessor(ID3D11VideoProcessorEnumerator* pEnum, uint RateConversionIndex, ID3D11VideoProcessor** ppVideoProcessor);
    extern(C) int CreateAuthenticatedChannel(D3D11_AUTHENTICATED_CHANNEL_TYPE ChannelType, ID3D11AuthenticatedChannel** ppAuthenticatedChannel);
    extern(C) int CreateCryptoSession(_GUID* pCryptoType, _GUID* pDecoderProfile, _GUID* pKeyExchangeType, ID3D11CryptoSession** ppCryptoSession);
    extern(C) int CreateVideoDecoderOutputView(ID3D11Resource* pResource, D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC* pDesc, ID3D11VideoDecoderOutputView** ppVDOVView);
    extern(C) int CreateVideoProcessorInputView(ID3D11Resource* pResource, ID3D11VideoProcessorEnumerator* pEnum, D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC* pDesc, ID3D11VideoProcessorInputView** ppVPIView);
    extern(C) int CreateVideoProcessorOutputView(ID3D11Resource* pResource, ID3D11VideoProcessorEnumerator* pEnum, D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC* pDesc, ID3D11VideoProcessorOutputView** ppVPOView);
    extern(C) int CreateVideoProcessorEnumerator(D3D11_VIDEO_PROCESSOR_CONTENT_DESC* pDesc, ID3D11VideoProcessorEnumerator** ppEnum);
    extern(C) uint GetVideoDecoderProfileCount();
    extern(C) int GetVideoDecoderProfile(uint Index, _GUID* pDecoderProfile);
    extern(C) int CheckVideoDecoderFormat(_GUID* pDecoderProfile, DXGI_FORMAT Format, int* pSupported);
    extern(C) int GetVideoDecoderConfigCount(D3D11_VIDEO_DECODER_DESC* pDesc, uint* pCount);
    extern(C) int GetVideoDecoderConfig(D3D11_VIDEO_DECODER_DESC* pDesc, uint Index, D3D11_VIDEO_DECODER_CONFIG* pConfig);
    extern(C) int GetContentProtectionCaps(_GUID* pCryptoType, _GUID* pDecoderProfile, D3D11_VIDEO_CONTENT_PROTECTION_CAPS* pCaps);
    extern(C) int CheckCryptoKeyExchange(_GUID* pCryptoType, _GUID* pDecoderProfile, uint Index, _GUID* pKeyExchangeType);
    extern(C) int SetPrivateData(_GUID* guid, uint DataSize, void* pData);
    extern(C) int SetPrivateDataInterface(_GUID* guid, IUnknown* pData);
}

// d3d11.h: 13576
interface ID3D11Device: IUnknown {
    static immutable iidof = GUID(0xdb6f6ddb, 0xac77, 0x4e88, [0x82, 0x53, 0x81, 0x9d, 0xf9, 0xbb, 0xf1, 0x40]);
    extern(C) int CreateBuffer(D3D11_BUFFER_DESC* pDesc, D3D11_SUBRESOURCE_DATA* pInitialData, ID3D11Buffer** ppBuffer);
    extern(C) int CreateTexture1D(D3D11_TEXTURE1D_DESC* pDesc, D3D11_SUBRESOURCE_DATA* pInitialData, ID3D11Texture1D** ppTexture1D);
    extern(C) int CreateTexture2D(D3D11_TEXTURE2D_DESC* pDesc, D3D11_SUBRESOURCE_DATA* pInitialData, ID3D11Texture2D** ppTexture2D);
    extern(C) int CreateTexture3D(D3D11_TEXTURE3D_DESC* pDesc, D3D11_SUBRESOURCE_DATA* pInitialData, ID3D11Texture3D** ppTexture3D);
    extern(C) int CreateShaderResourceView(ID3D11Resource* pResource, D3D11_SHADER_RESOURCE_VIEW_DESC* pDesc, ID3D11ShaderResourceView** ppSRView);
    extern(C) int CreateUnorderedAccessView(ID3D11Resource* pResource, D3D11_UNORDERED_ACCESS_VIEW_DESC* pDesc, ID3D11UnorderedAccessView** ppUAView);
    extern(C) int CreateRenderTargetView(ID3D11Resource* pResource, D3D11_RENDER_TARGET_VIEW_DESC* pDesc, ID3D11RenderTargetView** ppRTView);
    extern(C) int CreateDepthStencilView(ID3D11Resource* pResource, D3D11_DEPTH_STENCIL_VIEW_DESC* pDesc, ID3D11DepthStencilView** ppDepthStencilView);
    extern(C) int CreateInputLayout(D3D11_INPUT_ELEMENT_DESC* pInputElementDescs, uint NumElements, void* pShaderBytecodeWithInputSignature, ulong BytecodeLength, ID3D11InputLayout** ppInputLayout);
    extern(C) int CreateVertexShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11VertexShader** ppVertexShader);
    extern(C) int CreateGeometryShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11GeometryShader** ppGeometryShader);
    extern(C) int CreateGeometryShaderWithStreamOutput(void* pShaderBytecode, ulong BytecodeLength, D3D11_SO_DECLARATION_ENTRY* pSODeclaration, uint NumEntries, uint* pBufferStrides, uint NumStrides, uint RasterizedStream, ID3D11ClassLinkage* pClassLinkage, ID3D11GeometryShader** ppGeometryShader);
    extern(C) int CreatePixelShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11PixelShader** ppPixelShader);
    extern(C) int CreateHullShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11HullShader** ppHullShader);
    extern(C) int CreateDomainShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11DomainShader** ppDomainShader);
    extern(C) int CreateComputeShader(void* pShaderBytecode, ulong BytecodeLength, ID3D11ClassLinkage* pClassLinkage, ID3D11ComputeShader** ppComputeShader);
    extern(C) int CreateClassLinkage(ID3D11ClassLinkage** ppLinkage);
    extern(C) int CreateBlendState(D3D11_BLEND_DESC* pBlendStateDesc, ID3D11BlendState** ppBlendState);
    extern(C) int CreateDepthStencilState(D3D11_DEPTH_STENCIL_DESC* pDepthStencilDesc, ID3D11DepthStencilState** ppDepthStencilState);
    extern(C) int CreateRasterizerState(D3D11_RASTERIZER_DESC* pRasterizerDesc, ID3D11RasterizerState** ppRasterizerState);
    extern(C) int CreateSamplerState(D3D11_SAMPLER_DESC* pSamplerDesc, ID3D11SamplerState** ppSamplerState);
    extern(C) int CreateQuery(D3D11_QUERY_DESC* pQueryDesc, ID3D11Query** ppQuery);
    extern(C) int CreatePredicate(D3D11_QUERY_DESC* pPredicateDesc, ID3D11Predicate** ppPredicate);
    extern(C) int CreateCounter(D3D11_COUNTER_DESC* pCounterDesc, ID3D11Counter** ppCounter);
    extern(C) int CreateDeferredContext(uint ContextFlags, ID3D11DeviceContext** ppDeferredContext);
    extern(C) int OpenSharedResource(void* hResource, _GUID* ReturnedInterface, void** ppResource);
    extern(C) int CheckFormatSupport(DXGI_FORMAT Format, uint* pFormatSupport);
    extern(C) int CheckMultisampleQualityLevels(DXGI_FORMAT Format, uint SampleCount, uint* pNumQualityLevels);
    extern(C) void CheckCounterInfo(D3D11_COUNTER_INFO* pCounterInfo);
    extern(C) int CheckCounter(D3D11_COUNTER_DESC* pDesc, D3D11_COUNTER_TYPE* pType, uint* pActiveCounters, byte* szName, uint* pNameLength, byte* szUnits, uint* pUnitsLength, byte* szDescription, uint* pDescriptionLength);
    extern(C) int CheckFeatureSupport(D3D11_FEATURE Feature, void* pFeatureSupportData, uint FeatureSupportDataSize);
    extern(C) int GetPrivateData(_GUID* guid, uint* pDataSize, void* pData);
    extern(C) int SetPrivateData(_GUID* guid, uint DataSize, void* pData);
    extern(C) int SetPrivateDataInterface(_GUID* guid, IUnknown* pData);
    extern(C) D3D_FEATURE_LEVEL GetFeatureLevel();
    extern(C) uint GetCreationFlags();
    extern(C) int GetDeviceRemovedReason();
    extern(C) void GetImmediateContext(ID3D11DeviceContext** ppImmediateContext);
    extern(C) int SetExceptionMode(uint RaiseFlags);
    extern(C) uint GetExceptionMode();
}

extern(C) int D3D11CreateDevice(IDXGIAdapter* pAdapter, D3D_DRIVER_TYPE DriverType, HINSTANCE* Software, uint Flags, D3D_FEATURE_LEVEL* pFeatureLevels, uint FeatureLevels, uint SDKVersion, ID3D11Device** ppDevice, D3D_FEATURE_LEVEL* pFeatureLevel, ID3D11DeviceContext** ppImmediateContext);
extern(C) int D3D11CreateDeviceAndSwapChain(IDXGIAdapter* pAdapter, D3D_DRIVER_TYPE DriverType, HINSTANCE* Software, uint Flags, D3D_FEATURE_LEVEL* pFeatureLevels, uint FeatureLevels, uint SDKVersion, DXGI_SWAP_CHAIN_DESC* pSwapChainDesc, IDXGISwapChain** ppSwapChain, ID3D11Device** ppDevice, D3D_FEATURE_LEVEL* pFeatureLevel, ID3D11DeviceContext** ppImmediateContext);
