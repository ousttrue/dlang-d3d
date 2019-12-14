module windowskits.d3d11shader;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import core.sys.windows.basetyps;
import windowskits.d3dcommon;
import windowskits.basetsd;
enum D3D_RETURN_PARAMETER_INDEX = ( - 1 );
enum D3D_SHADER_REQUIRES_DOUBLES = 0x00000001;
enum D3D_SHADER_REQUIRES_EARLY_DEPTH_STENCIL = 0x00000002;
enum D3D_SHADER_REQUIRES_UAVS_AT_EVERY_STAGE = 0x00000004;
enum D3D_SHADER_REQUIRES_64_UAVS = 0x00000008;
enum D3D_SHADER_REQUIRES_MINIMUM_PRECISION = 0x00000010;
enum D3D_SHADER_REQUIRES_11_1_DOUBLE_EXTENSIONS = 0x00000020;
enum D3D_SHADER_REQUIRES_11_1_SHADER_EXTENSIONS = 0x00000040;
enum D3D_SHADER_REQUIRES_LEVEL_9_COMPARISON_FILTERING = 0x00000080;
enum D3D_SHADER_REQUIRES_TILED_RESOURCES = 0x00000100;
interface ID3D11Linker: IUnknown
{
    static const iidof = parseGUID("59a6cd0e-e10d-4c1f-88c0-63aba1daf30e");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT Link(ID3D11ModuleInstance pEntry, LPCSTR pEntryName, LPCSTR pTargetName, UINT uFlags, ID3DBlob* ppShaderBlob, ID3DBlob* ppErrorBuffer);
    HRESULT UseLibrary(ID3D11ModuleInstance pLibraryMI);
    HRESULT AddClipPlaneFromCBuffer(UINT uCBufferSlot, UINT uCBufferEntry);
}
interface ID3D11ModuleInstance: IUnknown
{
    static const iidof = parseGUID("469e07f7-045a-48d5-aa12-68a478cdf75d");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT BindConstantBuffer(UINT uSrcSlot, UINT uDstSlot, UINT cbDstOffset);
    HRESULT BindConstantBufferByName(LPCSTR pName, UINT uDstSlot, UINT cbDstOffset);
    HRESULT BindResource(UINT uSrcSlot, UINT uDstSlot, UINT uCount);
    HRESULT BindResourceByName(LPCSTR pName, UINT uDstSlot, UINT uCount);
    HRESULT BindSampler(UINT uSrcSlot, UINT uDstSlot, UINT uCount);
    HRESULT BindSamplerByName(LPCSTR pName, UINT uDstSlot, UINT uCount);
    HRESULT BindUnorderedAccessView(UINT uSrcSlot, UINT uDstSlot, UINT uCount);
    HRESULT BindUnorderedAccessViewByName(LPCSTR pName, UINT uDstSlot, UINT uCount);
    HRESULT BindResourceAsUnorderedAccessView(UINT uSrcSrvSlot, UINT uDstUavSlot, UINT uCount);
    HRESULT BindResourceAsUnorderedAccessViewByName(LPCSTR pSrvName, UINT uDstUavSlot, UINT uCount);
}
interface ID3D11Module: IUnknown
{
    static const iidof = parseGUID("cac701ee-80fc-4122-8242-10b39c8cec34");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT CreateInstance(LPCSTR pNamespace, ID3D11ModuleInstance* ppModuleInstance);
}
interface ID3D11FunctionLinkingGraph: IUnknown
{
    static const iidof = parseGUID("54133220-1ce8-43d3-8236-9855c5ceecff");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT CreateModuleInstance(ID3D11ModuleInstance* ppModuleInstance, ID3DBlob* ppErrorBuffer);
    HRESULT SetInputSignature(D3D11_PARAMETER_DESC* pInputParameters, UINT cInputParameters, ID3D11LinkingNode* ppInputNode);
    HRESULT SetOutputSignature(D3D11_PARAMETER_DESC* pOutputParameters, UINT cOutputParameters, ID3D11LinkingNode* ppOutputNode);
    HRESULT CallFunction(LPCSTR pModuleInstanceNamespace, ID3D11Module pModuleWithFunctionPrototype, LPCSTR pFunctionName, ID3D11LinkingNode* ppCallNode);
    HRESULT PassValue(ID3D11LinkingNode pSrcNode, INT SrcParameterIndex, ID3D11LinkingNode pDstNode, INT DstParameterIndex);
    HRESULT PassValueWithSwizzle(ID3D11LinkingNode pSrcNode, INT SrcParameterIndex, LPCSTR pSrcSwizzle, ID3D11LinkingNode pDstNode, INT DstParameterIndex, LPCSTR pDstSwizzle);
    HRESULT GetLastError(ID3DBlob* ppErrorBuffer);
    HRESULT GenerateHlsl(UINT uFlags, ID3DBlob* ppBuffer);
}
alias D3D11_PARAMETER_DESC = _D3D11_PARAMETER_DESC;
struct _D3D11_PARAMETER_DESC
{
    LPCSTR Name;
    LPCSTR SemanticName;
    D3D_SHADER_VARIABLE_TYPE Type;
    D3D_SHADER_VARIABLE_CLASS Class;
    UINT Rows;
    UINT Columns;
    D3D_INTERPOLATION_MODE InterpolationMode;
    D3D_PARAMETER_FLAGS Flags;
    UINT FirstInRegister;
    UINT FirstInComponent;
    UINT FirstOutRegister;
    UINT FirstOutComponent;
}
interface ID3D11LinkingNode: IUnknown
{
    static const iidof = parseGUID("d80dd70c-8d2f-4751-94a1-03c79b3556db");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
}
enum D3D11_SHADER_VERSION_TYPE
{
    D3D11_SHVER_PIXEL_SHADER = 0x0,
    D3D11_SHVER_VERTEX_SHADER = 0x1,
    D3D11_SHVER_GEOMETRY_SHADER = 0x2,
    D3D11_SHVER_HULL_SHADER = 0x3,
    D3D11_SHVER_DOMAIN_SHADER = 0x4,
    D3D11_SHVER_COMPUTE_SHADER = 0x5,
    D3D11_SHVER_RESERVED0 = 0xfff0,
}
alias D3D11_RESOURCE_RETURN_TYPE = D3D_RESOURCE_RETURN_TYPE;
alias D3D11_CBUFFER_TYPE = D3D_CBUFFER_TYPE;
struct _D3D11_SIGNATURE_PARAMETER_DESC
{
    LPCSTR SemanticName;
    UINT SemanticIndex;
    UINT Register;
    D3D_NAME SystemValueType;
    D3D_REGISTER_COMPONENT_TYPE ComponentType;
    BYTE Mask;
    BYTE ReadWriteMask;
    UINT Stream;
    D3D_MIN_PRECISION MinPrecision;
}
alias D3D11_SIGNATURE_PARAMETER_DESC = _D3D11_SIGNATURE_PARAMETER_DESC;
struct _D3D11_SHADER_BUFFER_DESC
{
    LPCSTR Name;
    D3D_CBUFFER_TYPE Type;
    UINT Variables;
    UINT Size;
    UINT uFlags;
}
alias D3D11_SHADER_BUFFER_DESC = _D3D11_SHADER_BUFFER_DESC;
struct _D3D11_SHADER_VARIABLE_DESC
{
    LPCSTR Name;
    UINT StartOffset;
    UINT Size;
    UINT uFlags;
    LPVOID DefaultValue;
    UINT StartTexture;
    UINT TextureSize;
    UINT StartSampler;
    UINT SamplerSize;
}
alias D3D11_SHADER_VARIABLE_DESC = _D3D11_SHADER_VARIABLE_DESC;
struct _D3D11_SHADER_TYPE_DESC
{
    D3D_SHADER_VARIABLE_CLASS Class;
    D3D_SHADER_VARIABLE_TYPE Type;
    UINT Rows;
    UINT Columns;
    UINT Elements;
    UINT Members;
    UINT Offset;
    LPCSTR Name;
}
alias D3D11_SHADER_TYPE_DESC = _D3D11_SHADER_TYPE_DESC;
alias D3D11_TESSELLATOR_DOMAIN = D3D_TESSELLATOR_DOMAIN;
alias D3D11_TESSELLATOR_PARTITIONING = D3D_TESSELLATOR_PARTITIONING;
alias D3D11_TESSELLATOR_OUTPUT_PRIMITIVE = D3D_TESSELLATOR_OUTPUT_PRIMITIVE;
struct _D3D11_SHADER_DESC
{
    UINT Version;
    LPCSTR Creator;
    UINT Flags;
    UINT ConstantBuffers;
    UINT BoundResources;
    UINT InputParameters;
    UINT OutputParameters;
    UINT InstructionCount;
    UINT TempRegisterCount;
    UINT TempArrayCount;
    UINT DefCount;
    UINT DclCount;
    UINT TextureNormalInstructions;
    UINT TextureLoadInstructions;
    UINT TextureCompInstructions;
    UINT TextureBiasInstructions;
    UINT TextureGradientInstructions;
    UINT FloatInstructionCount;
    UINT IntInstructionCount;
    UINT UintInstructionCount;
    UINT StaticFlowControlCount;
    UINT DynamicFlowControlCount;
    UINT MacroInstructionCount;
    UINT ArrayInstructionCount;
    UINT CutInstructionCount;
    UINT EmitInstructionCount;
    D3D_PRIMITIVE_TOPOLOGY GSOutputTopology;
    UINT GSMaxOutputVertexCount;
    D3D_PRIMITIVE InputPrimitive;
    UINT PatchConstantParameters;
    UINT cGSInstanceCount;
    UINT cControlPoints;
    D3D_TESSELLATOR_OUTPUT_PRIMITIVE HSOutputPrimitive;
    D3D_TESSELLATOR_PARTITIONING HSPartitioning;
    D3D_TESSELLATOR_DOMAIN TessellatorDomain;
    UINT cBarrierInstructions;
    UINT cInterlockedInstructions;
    UINT cTextureStoreInstructions;
}
alias D3D11_SHADER_DESC = _D3D11_SHADER_DESC;
struct _D3D11_SHADER_INPUT_BIND_DESC
{
    LPCSTR Name;
    D3D_SHADER_INPUT_TYPE Type;
    UINT BindPoint;
    UINT BindCount;
    UINT uFlags;
    D3D_RESOURCE_RETURN_TYPE ReturnType;
    D3D_SRV_DIMENSION Dimension;
    UINT NumSamples;
}
alias D3D11_SHADER_INPUT_BIND_DESC = _D3D11_SHADER_INPUT_BIND_DESC;
struct _D3D11_LIBRARY_DESC
{
    LPCSTR Creator;
    UINT Flags;
    UINT FunctionCount;
}
alias D3D11_LIBRARY_DESC = _D3D11_LIBRARY_DESC;
struct _D3D11_FUNCTION_DESC
{
    UINT Version;
    LPCSTR Creator;
    UINT Flags;
    UINT ConstantBuffers;
    UINT BoundResources;
    UINT InstructionCount;
    UINT TempRegisterCount;
    UINT TempArrayCount;
    UINT DefCount;
    UINT DclCount;
    UINT TextureNormalInstructions;
    UINT TextureLoadInstructions;
    UINT TextureCompInstructions;
    UINT TextureBiasInstructions;
    UINT TextureGradientInstructions;
    UINT FloatInstructionCount;
    UINT IntInstructionCount;
    UINT UintInstructionCount;
    UINT StaticFlowControlCount;
    UINT DynamicFlowControlCount;
    UINT MacroInstructionCount;
    UINT ArrayInstructionCount;
    UINT MovInstructionCount;
    UINT MovcInstructionCount;
    UINT ConversionInstructionCount;
    UINT BitwiseInstructionCount;
    D3D_FEATURE_LEVEL MinFeatureLevel;
    UINT64 RequiredFeatureFlags;
    LPCSTR Name;
    INT FunctionParameterCount;
    BOOL HasReturn;
    BOOL Has10Level9VertexShader;
    BOOL Has10Level9PixelShader;
}
alias D3D11_FUNCTION_DESC = _D3D11_FUNCTION_DESC;
interface ID3D11ShaderReflectionType
{
    static const iidof = parseGUID("6e6ffa6a-9bae-4613-a51e-91652d508c21");
    HRESULT GetDesc(D3D11_SHADER_TYPE_DESC* pDesc);
    ID3D11ShaderReflectionType GetMemberTypeByIndex(UINT Index);
    ID3D11ShaderReflectionType GetMemberTypeByName(LPCSTR Name);
    LPCSTR GetMemberTypeName(UINT Index);
    HRESULT IsEqual(ID3D11ShaderReflectionType pType);
    ID3D11ShaderReflectionType GetSubType();
    ID3D11ShaderReflectionType GetBaseClass();
    UINT GetNumInterfaces();
    ID3D11ShaderReflectionType GetInterfaceByIndex(UINT uIndex);
    HRESULT IsOfType(ID3D11ShaderReflectionType pType);
    HRESULT ImplementsInterface(ID3D11ShaderReflectionType pBase);
}
alias LPD3D11SHADERREFLECTIONTYPE = ID3D11ShaderReflectionType;
interface ID3D11ShaderReflectionVariable
{
    static const iidof = parseGUID("51f23923-f3e5-4bd1-91cb-606177d8db4c");
    HRESULT GetDesc(D3D11_SHADER_VARIABLE_DESC* pDesc);
    ID3D11ShaderReflectionType GetType();
    ID3D11ShaderReflectionConstantBuffer GetBuffer();
    UINT GetInterfaceSlot(UINT uArrayIndex);
}
interface ID3D11ShaderReflectionConstantBuffer
{
    static const iidof = parseGUID("eb62d63d-93dd-4318-8ae8-c6f83ad371b8");
    HRESULT GetDesc(D3D11_SHADER_BUFFER_DESC* pDesc);
    ID3D11ShaderReflectionVariable GetVariableByIndex(UINT Index);
    ID3D11ShaderReflectionVariable GetVariableByName(LPCSTR Name);
}
alias LPD3D11SHADERREFLECTIONVARIABLE = ID3D11ShaderReflectionVariable;
alias LPD3D11SHADERREFLECTIONCONSTANTBUFFER = ID3D11ShaderReflectionConstantBuffer;
interface ID3D11ShaderReflection: IUnknown
{
    static const iidof = parseGUID("8d536ca1-0cca-4956-a837-786963755584");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT GetDesc(D3D11_SHADER_DESC* pDesc);
    ID3D11ShaderReflectionConstantBuffer GetConstantBufferByIndex(UINT Index);
    ID3D11ShaderReflectionConstantBuffer GetConstantBufferByName(LPCSTR Name);
    HRESULT GetResourceBindingDesc(UINT ResourceIndex, D3D11_SHADER_INPUT_BIND_DESC* pDesc);
    HRESULT GetInputParameterDesc(UINT ParameterIndex, D3D11_SIGNATURE_PARAMETER_DESC* pDesc);
    HRESULT GetOutputParameterDesc(UINT ParameterIndex, D3D11_SIGNATURE_PARAMETER_DESC* pDesc);
    HRESULT GetPatchConstantParameterDesc(UINT ParameterIndex, D3D11_SIGNATURE_PARAMETER_DESC* pDesc);
    ID3D11ShaderReflectionVariable GetVariableByName(LPCSTR Name);
    HRESULT GetResourceBindingDescByName(LPCSTR Name, D3D11_SHADER_INPUT_BIND_DESC* pDesc);
    UINT GetMovInstructionCount();
    UINT GetMovcInstructionCount();
    UINT GetConversionInstructionCount();
    UINT GetBitwiseInstructionCount();
    D3D_PRIMITIVE GetGSInputPrimitive();
    BOOL IsSampleFrequencyShader();
    UINT GetNumInterfaceSlots();
    HRESULT GetMinFeatureLevel(D3D_FEATURE_LEVEL* pLevel);
    UINT GetThreadGroupSize(UINT* pSizeX, UINT* pSizeY, UINT* pSizeZ);
    UINT64 GetRequiresFlags();
}
alias LPD3D11SHADERREFLECTION = ID3D11ShaderReflection;
interface ID3D11LibraryReflection: IUnknown
{
    static const iidof = parseGUID("54384f1b-5b3e-4bb7-ae01-60ba3097cbb6");
    HRESULT QueryInterface(IID* iid, LPVOID* ppv);
    ULONG AddRef();
    ULONG Release();
    HRESULT GetDesc(D3D11_LIBRARY_DESC* pDesc);
    ID3D11FunctionReflection GetFunctionByIndex(INT FunctionIndex);
}
interface ID3D11FunctionReflection
{
    static const iidof = parseGUID("207bcecb-d683-4a06-a8a3-9b149b9f73a4");
    HRESULT GetDesc(D3D11_FUNCTION_DESC* pDesc);
    ID3D11ShaderReflectionConstantBuffer GetConstantBufferByIndex(UINT BufferIndex);
    ID3D11ShaderReflectionConstantBuffer GetConstantBufferByName(LPCSTR Name);
    HRESULT GetResourceBindingDesc(UINT ResourceIndex, D3D11_SHADER_INPUT_BIND_DESC* pDesc);
    ID3D11ShaderReflectionVariable GetVariableByName(LPCSTR Name);
    HRESULT GetResourceBindingDescByName(LPCSTR Name, D3D11_SHADER_INPUT_BIND_DESC* pDesc);
    ID3D11FunctionParameterReflection GetFunctionParameter(INT ParameterIndex);
}
interface ID3D11FunctionParameterReflection
{
    static const iidof = parseGUID("42757488-334f-47fe-982e-1a65d08cc462");
    HRESULT GetDesc(D3D11_PARAMETER_DESC* pDesc);
}
alias LPD3D11LIBRARYREFLECTION = ID3D11LibraryReflection;
alias LPD3D11FUNCTIONREFLECTION = ID3D11FunctionReflection;
alias LPD3D11FUNCTIONPARAMETERREFLECTION = ID3D11FunctionParameterReflection;
