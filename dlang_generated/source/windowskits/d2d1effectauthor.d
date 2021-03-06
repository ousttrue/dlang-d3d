// This source code was generated by regenerator
module windowskits.d2d1effectauthor;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.minwindef;
import core.sys.windows.winnt;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.d2d1_1;
import windowskits.d3dcommon;
import windowskits.d2d1;
import windowskits.dcommon;
import windowskits.windef;
import windowskits.winnt;
import windowskits.dxgiformat;
import windowskits.wincodec;
enum D2D1_APPEND_ALIGNED_ELEMENT = ( 0xffffffff );
alias PD2D1_PROPERTY_SET_FUNCTION = extern(C) HRESULT function(IUnknown effect, const(BYTE)* data, UINT32 dataSize);
alias PD2D1_PROPERTY_GET_FUNCTION = extern(C) HRESULT function(const(IUnknown) effect, BYTE* data, UINT32 dataSize, UINT32* actualSize);
interface ID2D1EffectContext: IUnknown
{
    static const iidof = parseGUID("3d9f916b-27dc-4ad7-b4f1-64945340f563");
    void GetDpi(FLOAT* dpiX, FLOAT* dpiY);
    HRESULT CreateEffect(ref IID effectId, ID2D1Effect* effect);
    HRESULT GetMaximumSupportedFeatureLevel(const(D3D_FEATURE_LEVEL)* featureLevels, UINT32 featureLevelsCount, D3D_FEATURE_LEVEL* maximumSupportedFeatureLevel);
    HRESULT CreateTransformNodeFromEffect(ID2D1Effect effect, ID2D1TransformNode* transformNode);
    HRESULT CreateBlendTransform(UINT32 numInputs, const(D2D1_BLEND_DESCRIPTION)* blendDescription, ID2D1BlendTransform* transform);
    HRESULT CreateBorderTransform(D2D1_EXTEND_MODE extendModeX, D2D1_EXTEND_MODE extendModeY, ID2D1BorderTransform* transform);
    HRESULT CreateOffsetTransform(D2D1_POINT_2L offset, ID2D1OffsetTransform* transform);
    HRESULT CreateBoundsAdjustmentTransform(const(D2D1_RECT_L)* outputRectangle, ID2D1BoundsAdjustmentTransform* transform);
    HRESULT LoadPixelShader(ref GUID shaderId, const(BYTE)* shaderBuffer, UINT32 shaderBufferCount);
    HRESULT LoadVertexShader(ref GUID resourceId, const(BYTE)* shaderBuffer, UINT32 shaderBufferCount);
    HRESULT LoadComputeShader(ref GUID resourceId, const(BYTE)* shaderBuffer, UINT32 shaderBufferCount);
    BOOL IsShaderLoaded(ref GUID shaderId);
    HRESULT CreateResourceTexture(const(GUID)* resourceId, const(D2D1_RESOURCE_TEXTURE_PROPERTIES)* resourceTextureProperties, const(BYTE)* data, const(UINT32)* strides, UINT32 dataSize, ID2D1ResourceTexture* resourceTexture);
    HRESULT FindResourceTexture(const(GUID)* resourceId, ID2D1ResourceTexture* resourceTexture);
    HRESULT CreateVertexBuffer(const(D2D1_VERTEX_BUFFER_PROPERTIES)* vertexBufferProperties, const(GUID)* resourceId, const(D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES)* customVertexBufferProperties, ID2D1VertexBuffer* buffer);
    HRESULT FindVertexBuffer(const(GUID)* resourceId, ID2D1VertexBuffer* buffer);
    HRESULT CreateColorContext(D2D1_COLOR_SPACE space, const(BYTE)* profile, UINT32 profileSize, ID2D1ColorContext* colorContext);
    HRESULT CreateColorContextFromFilename(PCWSTR filename, ID2D1ColorContext* colorContext);
    HRESULT CreateColorContextFromWicColorContext(IWICColorContext wicColorContext, ID2D1ColorContext* colorContext);
    HRESULT CheckFeatureSupport(D2D1_FEATURE feature, void* featureSupportData, UINT32 featureSupportDataSize);
    BOOL IsBufferPrecisionSupported(D2D1_BUFFER_PRECISION bufferPrecision);
}
interface ID2D1TransformNode: IUnknown
{
    static const iidof = parseGUID("b2efe1e7-729f-4102-949f-505fa21bf666");
    UINT32 GetInputCount();
}
struct D2D1_BLEND_DESCRIPTION
{
    D2D1_BLEND sourceBlend;
    D2D1_BLEND destinationBlend;
    D2D1_BLEND_OPERATION blendOperation;
    D2D1_BLEND sourceBlendAlpha;
    D2D1_BLEND destinationBlendAlpha;
    D2D1_BLEND_OPERATION blendOperationAlpha;
    FLOAT[4] blendFactor;
}
enum D2D1_BLEND
{
    _ZERO = 0x1,
    _ONE = 0x2,
    _SRC_COLOR = 0x3,
    _INV_SRC_COLOR = 0x4,
    _SRC_ALPHA = 0x5,
    _INV_SRC_ALPHA = 0x6,
    _DEST_ALPHA = 0x7,
    _INV_DEST_ALPHA = 0x8,
    _DEST_COLOR = 0x9,
    _INV_DEST_COLOR = 0xa,
    _SRC_ALPHA_SAT = 0xb,
    _BLEND_FACTOR = 0xe,
    _INV_BLEND_FACTOR = 0xf,
    _FORCE_DWORD = 0xffffffff,
}
enum D2D1_BLEND_OPERATION
{
    _ADD = 0x1,
    _SUBTRACT = 0x2,
    _REV_SUBTRACT = 0x3,
    _MIN = 0x4,
    _MAX = 0x5,
    _FORCE_DWORD = 0xffffffff,
}
interface ID2D1BlendTransform: ID2D1ConcreteTransform
{
    static const iidof = parseGUID("63ac0b32-ba44-450f-8806-7f4ca1ff2f1b");
    void SetDescription(const(D2D1_BLEND_DESCRIPTION)* description);
    void GetDescription(D2D1_BLEND_DESCRIPTION* description);
}
interface ID2D1ConcreteTransform: ID2D1TransformNode
{
    static const iidof = parseGUID("1a799d8a-69f7-4e4c-9fed-437ccc6684cc");
    HRESULT SetOutputBuffer(D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth);
    void SetCached(BOOL isCached);
}
enum D2D1_CHANNEL_DEPTH
{
    _DEFAULT = 0x0,
    _1 = 0x1,
    _4 = 0x4,
    _FORCE_DWORD = 0xffffffff,
}
interface ID2D1BorderTransform: ID2D1ConcreteTransform
{
    static const iidof = parseGUID("4998735c-3a19-473c-9781-656847e3a347");
    void SetExtendModeX(D2D1_EXTEND_MODE extendMode);
    void SetExtendModeY(D2D1_EXTEND_MODE extendMode);
    D2D1_EXTEND_MODE GetExtendModeX();
    D2D1_EXTEND_MODE GetExtendModeY();
}
interface ID2D1OffsetTransform: ID2D1TransformNode
{
    static const iidof = parseGUID("3fe6adea-7643-4f53-bd14-a0ce63f24042");
    void SetOffset(D2D1_POINT_2L offset);
    D2D1_POINT_2L GetOffset();
}
interface ID2D1BoundsAdjustmentTransform: ID2D1TransformNode
{
    static const iidof = parseGUID("90f732e2-5092-4606-a819-8651970baccd");
    void SetOutputBounds(const(D2D1_RECT_L)* outputBounds);
    void GetOutputBounds(D2D1_RECT_L* outputBounds);
}
struct D2D1_RESOURCE_TEXTURE_PROPERTIES
{
    const(UINT32)* extents;
    UINT32 dimensions;
    D2D1_BUFFER_PRECISION bufferPrecision;
    D2D1_CHANNEL_DEPTH channelDepth;
    D2D1_FILTER filter;
    const(D2D1_EXTEND_MODE)* extendModes;
}
enum D2D1_FILTER
{
    _MIN_MAG_MIP_POINT = 0x0,
    _MIN_MAG_POINT_MIP_LINEAR = 0x1,
    _MIN_POINT_MAG_LINEAR_MIP_POINT = 0x4,
    _MIN_POINT_MAG_MIP_LINEAR = 0x5,
    _MIN_LINEAR_MAG_MIP_POINT = 0x10,
    _MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x11,
    _MIN_MAG_LINEAR_MIP_POINT = 0x14,
    _MIN_MAG_MIP_LINEAR = 0x15,
    _ANISOTROPIC = 0x55,
    _FORCE_DWORD = 0xffffffff,
}
interface ID2D1ResourceTexture: IUnknown
{
    static const iidof = parseGUID("688d15c3-02b0-438d-b13a-d1b44c32c39a");
    HRESULT Update(const(UINT32)* minimumExtents, const(UINT32)* maximimumExtents, const(UINT32)* strides, UINT32 dimensions, const(BYTE)* data, UINT32 dataCount);
}
struct D2D1_VERTEX_BUFFER_PROPERTIES
{
    UINT32 inputCount;
    D2D1_VERTEX_USAGE usage;
    const(BYTE)* data;
    UINT32 byteWidth;
}
enum D2D1_VERTEX_USAGE
{
    _STATIC = 0x0,
    _DYNAMIC = 0x1,
    _FORCE_DWORD = 0xffffffff,
}
struct D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES
{
    const(BYTE)* shaderBufferWithInputSignature;
    UINT32 shaderBufferSize;
    const(D2D1_INPUT_ELEMENT_DESC)* inputElements;
    UINT32 elementCount;
    UINT32 stride;
}
struct D2D1_INPUT_ELEMENT_DESC
{
    PCSTR semanticName;
    UINT32 semanticIndex;
    DXGI_FORMAT format;
    UINT32 inputSlot;
    UINT32 alignedByteOffset;
}
interface ID2D1VertexBuffer: IUnknown
{
    static const iidof = parseGUID("9b8b1336-00a5-4668-92b7-ced5d8bf9b7b");
    HRESULT Map(BYTE** data, UINT32 bufferSize);
    HRESULT Unmap();
}
enum D2D1_FEATURE
{
    _DOUBLES = 0x0,
    _D3D10_X_HARDWARE_OPTIONS = 0x1,
    _FORCE_DWORD = 0xffffffff,
}
enum D2D1_CHANGE_TYPE
{
    _NONE = 0x0,
    _PROPERTIES = 0x1,
    _CONTEXT = 0x2,
    _GRAPH = 0x3,
    _FORCE_DWORD = 0xffffffff,
}
enum D2D1_PIXEL_OPTIONS
{
    _NONE = 0x0,
    _TRIVIAL_SAMPLING = 0x1,
    _FORCE_DWORD = 0xffffffff,
}
enum D2D1_VERTEX_OPTIONS
{
    _NONE = 0x0,
    _DO_NOT_CLEAR = 0x1,
    _USE_DEPTH_BUFFER = 0x2,
    _ASSUME_NO_OVERLAP = 0x4,
    _FORCE_DWORD = 0xffffffff,
}
struct D2D1_PROPERTY_BINDING
{
    PCWSTR propertyName;
    PD2D1_PROPERTY_SET_FUNCTION setFunction;
    PD2D1_PROPERTY_GET_FUNCTION getFunction;
}
struct D2D1_VERTEX_RANGE
{
    UINT32 startVertex;
    UINT32 vertexCount;
}
struct D2D1_INPUT_DESCRIPTION
{
    D2D1_FILTER filter;
    UINT32 levelOfDetailCount;
}
struct D2D1_FEATURE_DATA_DOUBLES
{
    BOOL doublePrecisionFloatShaderOps;
}
struct D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS
{
    BOOL computeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
}
interface ID2D1RenderInfo: IUnknown
{
    static const iidof = parseGUID("519ae1bd-d19a-420d-b849-364f594776b7");
    HRESULT SetInputDescription(UINT32 inputIndex, D2D1_INPUT_DESCRIPTION inputDescription);
    HRESULT SetOutputBuffer(D2D1_BUFFER_PRECISION bufferPrecision, D2D1_CHANNEL_DEPTH channelDepth);
    void SetCached(BOOL isCached);
    void SetInstructionCountHint(UINT32 instructionCount);
}
interface ID2D1DrawInfo: ID2D1RenderInfo
{
    static const iidof = parseGUID("693ce632-7f2f-45de-93fe-18d88b37aa21");
    HRESULT SetPixelShaderConstantBuffer(const(BYTE)* buffer, UINT32 bufferCount);
    HRESULT SetResourceTexture(UINT32 textureIndex, ID2D1ResourceTexture resourceTexture);
    HRESULT SetVertexShaderConstantBuffer(const(BYTE)* buffer, UINT32 bufferCount);
    HRESULT SetPixelShader(ref GUID shaderId, D2D1_PIXEL_OPTIONS pixelOptions=D2D1_PIXEL_OPTIONS._NONE);
    HRESULT SetVertexProcessing(ID2D1VertexBuffer vertexBuffer, D2D1_VERTEX_OPTIONS vertexOptions, const(D2D1_BLEND_DESCRIPTION)* blendDescription=null, const(D2D1_VERTEX_RANGE)* vertexRange=null, const(GUID)* vertexShader=null);
}
interface ID2D1ComputeInfo: ID2D1RenderInfo
{
    static const iidof = parseGUID("5598b14b-9fd7-48b7-9bdb-8f0964eb38bc");
    HRESULT SetComputeShaderConstantBuffer(const(BYTE)* buffer, UINT32 bufferCount);
    HRESULT SetComputeShader(ref GUID shaderId);
    HRESULT SetResourceTexture(UINT32 textureIndex, ID2D1ResourceTexture resourceTexture);
}
interface ID2D1TransformGraph: IUnknown
{
    static const iidof = parseGUID("13d29038-c3e6-4034-9081-13b53a417992");
    UINT32 GetInputCount();
    HRESULT SetSingleTransformNode(ID2D1TransformNode node);
    HRESULT AddNode(ID2D1TransformNode node);
    HRESULT RemoveNode(ID2D1TransformNode node);
    HRESULT SetOutputNode(ID2D1TransformNode node);
    HRESULT ConnectNode(ID2D1TransformNode fromNode, ID2D1TransformNode toNode, UINT32 toNodeInputIndex);
    HRESULT ConnectToEffectInput(UINT32 toEffectInputIndex, ID2D1TransformNode node, UINT32 toNodeInputIndex);
    void Clear();
    HRESULT SetPassthroughGraph(UINT32 effectInputIndex);
}
interface ID2D1Transform: ID2D1TransformNode
{
    static const iidof = parseGUID("ef1a287d-342a-4f76-8fdb-da0d6ea9f92b");
    HRESULT MapOutputRectToInputRects(const(D2D1_RECT_L)* outputRect, D2D1_RECT_L* inputRects, UINT32 inputRectsCount);
    HRESULT MapInputRectsToOutputRect(const(D2D1_RECT_L)* inputRects, const(D2D1_RECT_L)* inputOpaqueSubRects, UINT32 inputRectCount, D2D1_RECT_L* outputRect, D2D1_RECT_L* outputOpaqueSubRect);
    HRESULT MapInvalidRect(UINT32 inputIndex, D2D1_RECT_L invalidInputRect, D2D1_RECT_L* invalidOutputRect);
}
interface ID2D1DrawTransform: ID2D1Transform
{
    static const iidof = parseGUID("36bfdcb6-9739-435d-a30d-a653beff6a6f");
    HRESULT SetDrawInfo(ID2D1DrawInfo drawInfo);
}
interface ID2D1ComputeTransform: ID2D1Transform
{
    static const iidof = parseGUID("0d85573c-01e3-4f7d-bfd9-0d60608bf3c3");
    HRESULT SetComputeInfo(ID2D1ComputeInfo computeInfo);
    HRESULT CalculateThreadgroups(const(D2D1_RECT_L)* outputRect, UINT32* dimensionX, UINT32* dimensionY, UINT32* dimensionZ);
}
interface ID2D1AnalysisTransform: IUnknown
{
    static const iidof = parseGUID("0359dc30-95e6-4568-9055-27720d130e93");
    HRESULT ProcessAnalysisResults(const(BYTE)* analysisData, UINT32 analysisDataCount);
}
interface ID2D1SourceTransform: ID2D1Transform
{
    static const iidof = parseGUID("db1800dd-0c34-4cf9-be90-31cc0a5653e1");
    HRESULT SetRenderInfo(ID2D1RenderInfo renderInfo);
    HRESULT Draw(ID2D1Bitmap1 target, const(D2D1_RECT_L)* drawRect, D2D1_POINT_2U targetOrigin);
}
interface ID2D1EffectImpl: IUnknown
{
    static const iidof = parseGUID("a248fd3f-3e6c-4e63-9f03-7f68ecc91db9");
    HRESULT Initialize(ID2D1EffectContext effectContext, ID2D1TransformGraph transformGraph);
    HRESULT PrepareForRender(D2D1_CHANGE_TYPE changeType);
    HRESULT SetGraph(ID2D1TransformGraph transformGraph);
}
