// This source code was generated by regenerator
module windowskits.d3d10shader;
import windowskits.d3dcommon;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.winnt;
import windowskits.minwindef;
import windowskits.d3d10;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.guiddef;
import core.sys.windows.basetyps;
// macro function: D3D10_TX_VERSION ( _Major , _Minor ) ( ( 'T' << 24 ) | ( 'X' << 16 ) | ( ( _Major ) << 8 ) | ( _Minor ) );
enum D3D10_SHADER_DEBUG = ( 1 << 0 );
enum D3D10_SHADER_SKIP_VALIDATION = ( 1 << 1 );
enum D3D10_SHADER_SKIP_OPTIMIZATION = ( 1 << 2 );
enum D3D10_SHADER_PACK_MATRIX_ROW_MAJOR = ( 1 << 3 );
enum D3D10_SHADER_PACK_MATRIX_COLUMN_MAJOR = ( 1 << 4 );
enum D3D10_SHADER_PARTIAL_PRECISION = ( 1 << 5 );
enum D3D10_SHADER_FORCE_VS_SOFTWARE_NO_OPT = ( 1 << 6 );
enum D3D10_SHADER_FORCE_PS_SOFTWARE_NO_OPT = ( 1 << 7 );
enum D3D10_SHADER_NO_PRESHADER = ( 1 << 8 );
enum D3D10_SHADER_AVOID_FLOW_CONTROL = ( 1 << 9 );
enum D3D10_SHADER_PREFER_FLOW_CONTROL = ( 1 << 10 );
enum D3D10_SHADER_ENABLE_STRICTNESS = ( 1 << 11 );
enum D3D10_SHADER_ENABLE_BACKWARDS_COMPATIBILITY = ( 1 << 12 );
enum D3D10_SHADER_IEEE_STRICTNESS = ( 1 << 13 );
enum D3D10_SHADER_WARNINGS_ARE_ERRORS = ( 1 << 18 );
enum D3D10_SHADER_RESOURCES_MAY_ALIAS = ( 1 << 19 );
enum D3D10_ENABLE_UNBOUNDED_DESCRIPTOR_TABLES = ( 1 << 20 );
enum D3D10_ALL_RESOURCES_BOUND = ( 1 << 21 );
enum D3D10_SHADER_DEBUG_NAME_FOR_SOURCE = ( 1 << 22 );
enum D3D10_SHADER_DEBUG_NAME_FOR_BINARY = ( 1 << 23 );
enum D3D10_SHADER_OPTIMIZATION_LEVEL0 = ( 1 << 14 );
enum D3D10_SHADER_OPTIMIZATION_LEVEL1 = 0;
enum D3D10_SHADER_OPTIMIZATION_LEVEL2 = ( ( 1 << 14 ) | ( 1 << 15 ) );
enum D3D10_SHADER_OPTIMIZATION_LEVEL3 = ( 1 << 15 );
enum D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_LATEST = 0;
enum D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_1_0 = ( 1 << 4 );
enum D3D10_SHADER_FLAGS2_FORCE_ROOT_SIGNATURE_1_1 = ( 1 << 5 );
alias D3D10_SHADER_VARIABLE_CLASS = D3D_SHADER_VARIABLE_CLASS;
alias D3D10_SHADER_VARIABLE_TYPE = D3D_SHADER_VARIABLE_TYPE;
alias D3D10_SIGNATURE_PARAMETER_DESC = _D3D10_SIGNATURE_PARAMETER_DESC;
struct _D3D10_SIGNATURE_PARAMETER_DESC
{
    LPCSTR SemanticName;
    UINT SemanticIndex;
    UINT Register;
    D3D10_NAME SystemValueType;
    D3D10_REGISTER_COMPONENT_TYPE ComponentType;
    BYTE Mask;
    BYTE ReadWriteMask;
}
alias D3D10_NAME = D3D_NAME;
alias D3D10_REGISTER_COMPONENT_TYPE = D3D_REGISTER_COMPONENT_TYPE;
alias D3D10_SHADER_MACRO = D3D_SHADER_MACRO;
alias LPD3D10_SHADER_MACRO = D3D10_SHADER_MACRO*;
alias LPD3D10_SHADER_VARIABLE_CLASS = D3D10_SHADER_VARIABLE_CLASS*;
alias D3D10_SHADER_VARIABLE_FLAGS = D3D_SHADER_VARIABLE_FLAGS;
alias LPD3D10_SHADER_VARIABLE_FLAGS = D3D10_SHADER_VARIABLE_FLAGS*;
alias LPD3D10_SHADER_VARIABLE_TYPE = D3D10_SHADER_VARIABLE_TYPE*;
alias D3D10_SHADER_INPUT_FLAGS = D3D_SHADER_INPUT_FLAGS;
alias LPD3D10_SHADER_INPUT_FLAGS = D3D10_SHADER_INPUT_FLAGS*;
alias D3D10_SHADER_INPUT_TYPE = D3D_SHADER_INPUT_TYPE;
alias LPD3D10_SHADER_INPUT_TYPE = D3D10_SHADER_INPUT_TYPE*;
alias D3D10_SHADER_CBUFFER_FLAGS = D3D_SHADER_CBUFFER_FLAGS;
alias LPD3D10_SHADER_CBUFFER_FLAGS = D3D10_SHADER_CBUFFER_FLAGS*;
alias D3D10_CBUFFER_TYPE = D3D_CBUFFER_TYPE;
alias LPD3D10_CBUFFER_TYPE = D3D10_CBUFFER_TYPE*;
alias D3D10_RESOURCE_RETURN_TYPE = D3D_RESOURCE_RETURN_TYPE;
alias D3D10_INCLUDE_TYPE = D3D_INCLUDE_TYPE;
alias ID3D10Include = ID3DInclude;
alias LPD3D10INCLUDE = void*   ;
struct _D3D10_SHADER_DESC
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
    D3D10_PRIMITIVE_TOPOLOGY GSOutputTopology;
    UINT GSMaxOutputVertexCount;
}
alias D3D10_SHADER_DESC = _D3D10_SHADER_DESC;
struct _D3D10_SHADER_BUFFER_DESC
{
    LPCSTR Name;
    D3D10_CBUFFER_TYPE Type;
    UINT Variables;
    UINT Size;
    UINT uFlags;
}
alias D3D10_SHADER_BUFFER_DESC = _D3D10_SHADER_BUFFER_DESC;
struct _D3D10_SHADER_VARIABLE_DESC
{
    LPCSTR Name;
    UINT StartOffset;
    UINT Size;
    UINT uFlags;
    LPVOID DefaultValue;
}
alias D3D10_SHADER_VARIABLE_DESC = _D3D10_SHADER_VARIABLE_DESC;
struct _D3D10_SHADER_TYPE_DESC
{
    D3D10_SHADER_VARIABLE_CLASS Class;
    D3D10_SHADER_VARIABLE_TYPE Type;
    UINT Rows;
    UINT Columns;
    UINT Elements;
    UINT Members;
    UINT Offset;
}
alias D3D10_SHADER_TYPE_DESC = _D3D10_SHADER_TYPE_DESC;
struct _D3D10_SHADER_INPUT_BIND_DESC
{
    LPCSTR Name;
    D3D10_SHADER_INPUT_TYPE Type;
    UINT BindPoint;
    UINT BindCount;
    UINT uFlags;
    D3D10_RESOURCE_RETURN_TYPE ReturnType;
    D3D10_SRV_DIMENSION Dimension;
    UINT NumSamples;
}
alias D3D10_SHADER_INPUT_BIND_DESC = _D3D10_SHADER_INPUT_BIND_DESC;
interface ID3D10ShaderReflectionType
{
    static const iidof = parseGUID("c530ad7d-9b16-4395-a979-ba2ecff83add");
    HRESULT GetDesc(D3D10_SHADER_TYPE_DESC* pDesc);
    ID3D10ShaderReflectionType GetMemberTypeByIndex(UINT Index);
    ID3D10ShaderReflectionType GetMemberTypeByName(LPCSTR Name);
    LPCSTR GetMemberTypeName(UINT Index);
}
alias LPD3D10SHADERREFLECTIONTYPE = ID3D10ShaderReflectionType;
interface ID3D10ShaderReflectionVariable
{
    static const iidof = parseGUID("1bf63c95-2650-405d-99c1-3636bd1da0a1");
    HRESULT GetDesc(D3D10_SHADER_VARIABLE_DESC* pDesc);
    ID3D10ShaderReflectionType GetType();
}
alias LPD3D10SHADERREFLECTIONVARIABLE = ID3D10ShaderReflectionVariable;
interface ID3D10ShaderReflectionConstantBuffer
{
    static const iidof = parseGUID("66c66a94-dddd-4b62-a66a-f0da33c2b4d0");
    HRESULT GetDesc(D3D10_SHADER_BUFFER_DESC* pDesc);
    ID3D10ShaderReflectionVariable GetVariableByIndex(UINT Index);
    ID3D10ShaderReflectionVariable GetVariableByName(LPCSTR Name);
}
alias LPD3D10SHADERREFLECTIONCONSTANTBUFFER = ID3D10ShaderReflectionConstantBuffer;
interface ID3D10ShaderReflection: IUnknown
{
    static const iidof = parseGUID("d40e20b6-f8f7-42ad-ab20-4baf8f15dfaa");
    // skip QueryInterface
    // skip AddRef
    // skip Release
    HRESULT GetDesc(D3D10_SHADER_DESC* pDesc);
    ID3D10ShaderReflectionConstantBuffer GetConstantBufferByIndex(UINT Index);
    ID3D10ShaderReflectionConstantBuffer GetConstantBufferByName(LPCSTR Name);
    HRESULT GetResourceBindingDesc(UINT ResourceIndex, D3D10_SHADER_INPUT_BIND_DESC* pDesc);
    HRESULT GetInputParameterDesc(UINT ParameterIndex, D3D10_SIGNATURE_PARAMETER_DESC* pDesc);
    HRESULT GetOutputParameterDesc(UINT ParameterIndex, D3D10_SIGNATURE_PARAMETER_DESC* pDesc);
}
alias LPD3D10SHADERREFLECTION = ID3D10ShaderReflection;
extern(C) HRESULT D3D10CompileShader(LPCSTR pSrcData, SIZE_T SrcDataSize, LPCSTR pFileName, const(D3D10_SHADER_MACRO)* pDefines, LPD3D10INCLUDE pInclude, LPCSTR pFunctionName, LPCSTR pProfile, UINT Flags, ID3D10Blob* ppShader, ID3D10Blob* ppErrorMsgs);
extern(C) HRESULT D3D10PreprocessShader(LPCSTR pSrcData, SIZE_T SrcDataSize, LPCSTR pFileName, const(D3D10_SHADER_MACRO)* pDefines, LPD3D10INCLUDE pInclude, ID3D10Blob* ppShaderText, ID3D10Blob* ppErrorMsgs);
extern(C) HRESULT D3D10GetInputSignatureBlob(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10Blob* ppSignatureBlob);
extern(C) HRESULT D3D10GetOutputSignatureBlob(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10Blob* ppSignatureBlob);
extern(C) HRESULT D3D10GetInputAndOutputSignatureBlob(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10Blob* ppSignatureBlob);
extern(C) HRESULT D3D10ReflectShader(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10ShaderReflection* ppReflector);
extern(C) LPCSTR D3D10GetVertexShaderProfile(ID3D10Device pDevice);
extern(C) LPCSTR D3D10GetGeometryShaderProfile(ID3D10Device pDevice);
extern(C) HRESULT D3D10DisassembleShader(const(void)* pShader, SIZE_T BytecodeLength, BOOL EnableColorCode, LPCSTR pComments, ID3D10Blob* ppDisassembly);
extern(C) LPCSTR D3D10GetPixelShaderProfile(ID3D10Device pDevice);
extern(C) HRESULT D3D10GetShaderDebugInfo(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10Blob* ppDebugInfo);
