// This source code was generated by regenerator
module windowskits.d3dcompiler;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.d3dcommon;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.minwindef;
import windowskits.basetsd;
import core.sys.windows.basetyps;
import windowskits.d3d11shader;
import windowskits.d3d10effect;
import windowskits.d3d10;
import windowskits.dxgiformat;
import windowskits.windef;
import windowskits.dxgicommon;
import windowskits.d3d10shader;
enum D3DCOMPILER_DLL_A = "d3dcompiler_47.dll";
enum D3D_COMPILER_VERSION = 47;
enum D3DCOMPILE_DEBUG = ( 1 << 0 );
enum D3DCOMPILE_SKIP_VALIDATION = ( 1 << 1 );
enum D3DCOMPILE_SKIP_OPTIMIZATION = ( 1 << 2 );
enum D3DCOMPILE_PACK_MATRIX_ROW_MAJOR = ( 1 << 3 );
enum D3DCOMPILE_PACK_MATRIX_COLUMN_MAJOR = ( 1 << 4 );
enum D3DCOMPILE_PARTIAL_PRECISION = ( 1 << 5 );
enum D3DCOMPILE_FORCE_VS_SOFTWARE_NO_OPT = ( 1 << 6 );
enum D3DCOMPILE_FORCE_PS_SOFTWARE_NO_OPT = ( 1 << 7 );
enum D3DCOMPILE_NO_PRESHADER = ( 1 << 8 );
enum D3DCOMPILE_AVOID_FLOW_CONTROL = ( 1 << 9 );
enum D3DCOMPILE_PREFER_FLOW_CONTROL = ( 1 << 10 );
enum D3DCOMPILE_ENABLE_STRICTNESS = ( 1 << 11 );
enum D3DCOMPILE_ENABLE_BACKWARDS_COMPATIBILITY = ( 1 << 12 );
enum D3DCOMPILE_IEEE_STRICTNESS = ( 1 << 13 );
enum D3DCOMPILE_OPTIMIZATION_LEVEL0 = ( 1 << 14 );
enum D3DCOMPILE_OPTIMIZATION_LEVEL1 = 0;
enum D3DCOMPILE_OPTIMIZATION_LEVEL2 = ( ( 1 << 14 ) | ( 1 << 15 ) );
enum D3DCOMPILE_OPTIMIZATION_LEVEL3 = ( 1 << 15 );
enum D3DCOMPILE_RESERVED16 = ( 1 << 16 );
enum D3DCOMPILE_RESERVED17 = ( 1 << 17 );
enum D3DCOMPILE_WARNINGS_ARE_ERRORS = ( 1 << 18 );
enum D3DCOMPILE_RESOURCES_MAY_ALIAS = ( 1 << 19 );
enum D3DCOMPILE_ENABLE_UNBOUNDED_DESCRIPTOR_TABLES = ( 1 << 20 );
enum D3DCOMPILE_ALL_RESOURCES_BOUND = ( 1 << 21 );
enum D3DCOMPILE_DEBUG_NAME_FOR_SOURCE = ( 1 << 22 );
enum D3DCOMPILE_DEBUG_NAME_FOR_BINARY = ( 1 << 23 );
enum D3DCOMPILE_EFFECT_CHILD_EFFECT = ( 1 << 0 );
enum D3DCOMPILE_EFFECT_ALLOW_SLOW_OPS = ( 1 << 1 );
enum D3DCOMPILE_FLAGS2_FORCE_ROOT_SIGNATURE_LATEST = 0;
enum D3DCOMPILE_FLAGS2_FORCE_ROOT_SIGNATURE_1_0 = ( 1 << 4 );
enum D3DCOMPILE_FLAGS2_FORCE_ROOT_SIGNATURE_1_1 = ( 1 << 5 );
enum D3D_COMPILE_STANDARD_FILE_INCLUDE = cast(void*)1;
enum D3DCOMPILE_SECDATA_MERGE_UAV_SLOTS = 0x00000001;
enum D3DCOMPILE_SECDATA_PRESERVE_TEMPLATE_SLOTS = 0x00000002;
enum D3DCOMPILE_SECDATA_REQUIRE_TEMPLATE_MATCH = 0x00000004;
enum D3D_DISASM_ENABLE_COLOR_CODE = 0x00000001;
enum D3D_DISASM_ENABLE_DEFAULT_VALUE_PRINTS = 0x00000002;
enum D3D_DISASM_ENABLE_INSTRUCTION_NUMBERING = 0x00000004;
enum D3D_DISASM_ENABLE_INSTRUCTION_CYCLE = 0x00000008;
enum D3D_DISASM_DISABLE_DEBUG_INFO = 0x00000010;
enum D3D_DISASM_ENABLE_INSTRUCTION_OFFSET = 0x00000020;
enum D3D_DISASM_INSTRUCTION_ONLY = 0x00000040;
enum D3D_DISASM_PRINT_HEX_LITERALS = 0x00000080;
enum D3D_GET_INST_OFFSETS_INCLUDE_NON_EXECUTABLE = 0x00000001;
enum D3D_COMPRESS_SHADER_KEEP_ALL_PARTS = 0x00000001;
alias pD3DCompile = extern(C) HRESULT function(LPCVOID pSrcData, SIZE_T SrcDataSize, LPCSTR pFileName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, LPCSTR pEntrypoint, LPCSTR pTarget, UINT Flags1, UINT Flags2, ID3DBlob* ppCode, ID3DBlob* ppErrorMsgs);
alias pD3DPreprocess = extern(C) HRESULT function(LPCVOID pSrcData, SIZE_T SrcDataSize, LPCSTR pFileName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, ID3DBlob* ppCodeText, ID3DBlob* ppErrorMsgs);
alias pD3DDisassemble = extern(C) HRESULT function(LPCVOID pSrcData, SIZE_T SrcDataSize, UINT Flags, LPCSTR szComments, ID3DBlob* ppDisassembly);
enum D3DCOMPILER_STRIP_FLAGS
{
    _REFLECTION_DATA = 0x1,
    _DEBUG_INFO = 0x2,
    _TEST_BLOBS = 0x4,
    _PRIVATE_DATA = 0x8,
    _ROOT_SIGNATURE = 0x10,
    _FORCE_DWORD = 0x7fffffff,
}
enum D3D_BLOB_PART
{
    _INPUT_SIGNATURE_BLOB = 0x0,
    _OUTPUT_SIGNATURE_BLOB = 0x1,
    _INPUT_AND_OUTPUT_SIGNATURE_BLOB = 0x2,
    _PATCH_CONSTANT_SIGNATURE_BLOB = 0x3,
    _ALL_SIGNATURE_BLOB = 0x4,
    _DEBUG_INFO = 0x5,
    _LEGACY_SHADER = 0x6,
    _XNA_PREPASS_SHADER = 0x7,
    _XNA_SHADER = 0x8,
    _PDB = 0x9,
    _PRIVATE_DATA = 0xa,
    _ROOT_SIGNATURE = 0xb,
    _DEBUG_NAME = 0xc,
    _TEST_ALTERNATE_SHADER = 0x8000,
    _TEST_COMPILE_DETAILS = 0x8001,
    _TEST_COMPILE_PERF = 0x8002,
    _TEST_COMPILE_REPORT = 0x8003,
}
struct _D3D_SHADER_DATA
{
    LPCVOID pBytecode;
    SIZE_T BytecodeLength;
}
alias D3D_SHADER_DATA = _D3D_SHADER_DATA;
extern(C) HRESULT D3DReadFileToBlob(LPCWSTR pFileName, ID3DBlob* ppContents);
extern(C) HRESULT D3DGetOutputSignatureBlob(LPCVOID pSrcData, SIZE_T SrcDataSize, ID3DBlob* ppSignatureBlob);
extern(C) HRESULT D3DGetInputAndOutputSignatureBlob(LPCVOID pSrcData, SIZE_T SrcDataSize, ID3DBlob* ppSignatureBlob);
extern(C) HRESULT D3DGetInputSignatureBlob(LPCVOID pSrcData, SIZE_T SrcDataSize, ID3DBlob* ppSignatureBlob);
extern(C) HRESULT D3DGetTraceInstructionOffsets(LPCVOID pSrcData, SIZE_T SrcDataSize, UINT Flags, SIZE_T StartInstIndex, SIZE_T NumInsts, SIZE_T* pOffsets, SIZE_T* pTotalInsts);
extern(C) HRESULT D3DCreateFunctionLinkingGraph(UINT uFlags, ID3D11FunctionLinkingGraph* ppFunctionLinkingGraph);
extern(C) HRESULT D3DStripShader(LPCVOID pShaderBytecode, SIZE_T BytecodeLength, UINT uStripFlags, ID3DBlob* ppStrippedBlob);
extern(C) HRESULT D3DSetBlobPart(LPCVOID pSrcData, SIZE_T SrcDataSize, D3D_BLOB_PART Part, UINT Flags, LPCVOID pPart, SIZE_T PartSize, ID3DBlob* ppNewShader);
extern(C) HRESULT D3DGetBlobPart(LPCVOID pSrcData, SIZE_T SrcDataSize, D3D_BLOB_PART Part, UINT Flags, ID3DBlob* ppPart);
extern(C) HRESULT D3DCompressShaders(UINT uNumShaders, D3D_SHADER_DATA* pShaderData, UINT uFlags, ID3DBlob* ppCompressedData);
extern(C) HRESULT D3DCreateBlob(SIZE_T Size, ID3DBlob* ppBlob);
extern(C) HRESULT D3DDecompressShaders(LPCVOID pSrcData, SIZE_T SrcDataSize, UINT uNumShaders, UINT uStartIndex, UINT* pIndices, UINT uFlags, ID3DBlob* ppShaders, UINT* pTotalShaders);
extern(C) HRESULT D3DLoadModule(LPCVOID pSrcData, SIZE_T cbSrcDataSize, ID3D11Module* ppModule);
extern(C) HRESULT D3DDisassembleRegion(LPCVOID pSrcData, SIZE_T SrcDataSize, UINT Flags, LPCSTR szComments, SIZE_T StartByteOffset, SIZE_T NumInsts, SIZE_T* pFinishByteOffset, ID3DBlob* ppDisassembly);
extern(C) HRESULT D3DCompile2(LPCVOID pSrcData, SIZE_T SrcDataSize, LPCSTR pSourceName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, LPCSTR pEntrypoint, LPCSTR pTarget, UINT Flags1, UINT Flags2, UINT SecondaryDataFlags, LPCVOID pSecondaryData, SIZE_T SecondaryDataSize, ID3DBlob* ppCode, ID3DBlob* ppErrorMsgs);
extern(C) HRESULT D3DCompileFromFile(LPCWSTR pFileName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, LPCSTR pEntrypoint, LPCSTR pTarget, UINT Flags1, UINT Flags2, ID3DBlob* ppCode, ID3DBlob* ppErrorMsgs);
extern(C) HRESULT D3DCompile(LPCVOID pSrcData, SIZE_T SrcDataSize, LPCSTR pSourceName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, LPCSTR pEntrypoint, LPCSTR pTarget, UINT Flags1, UINT Flags2, ID3DBlob* ppCode, ID3DBlob* ppErrorMsgs);
extern(C) HRESULT D3DWriteBlobToFile(ID3DBlob pBlob, LPCWSTR pFileName, BOOL bOverwrite);
extern(C) HRESULT D3DCreateLinker(ID3D11Linker* ppLinker);
extern(C) HRESULT D3DPreprocess(LPCVOID pSrcData, SIZE_T SrcDataSize, LPCSTR pSourceName, const(D3D_SHADER_MACRO)* pDefines, void*    pInclude, ID3DBlob* ppCodeText, ID3DBlob* ppErrorMsgs);
extern(C) HRESULT D3DReflect(LPCVOID pSrcData, SIZE_T SrcDataSize, ref IID pInterface, void** ppReflector);
extern(C) HRESULT D3DGetDebugInfo(LPCVOID pSrcData, SIZE_T SrcDataSize, ID3DBlob* ppDebugInfo);
extern(C) HRESULT D3DDisassemble(LPCVOID pSrcData, SIZE_T SrcDataSize, UINT Flags, LPCSTR szComments, ID3DBlob* ppDisassembly);
extern(C) HRESULT D3DReflectLibrary(LPCVOID pSrcData, SIZE_T SrcDataSize, ref IID riid, LPVOID* ppReflector);
extern(C) HRESULT D3DDisassemble10Effect(ID3D10Effect pEffect, UINT Flags, ID3DBlob* ppDisassembly);
