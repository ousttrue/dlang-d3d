// This source code was generated by regenerator
module windowskits.d3d10effect;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.winnt;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.minwindef;
import windowskits.d3d10;
import windowskits.dxgiformat;
import windowskits.d3dcommon;
import windowskits.windef;
import windowskits.dxgicommon;
import windowskits.d3d10shader;
interface ID3D10Effect: IUnknown
{
    static const iidof = parseGUID("51b0ca8b-ec0b-4519-870d-8ee1cb5017c7");
    // skip QueryInterface
    // skip AddRef
    // skip Release
    BOOL IsValid();
    BOOL IsPool();
    HRESULT GetDevice(ID3D10Device* ppDevice);
    HRESULT GetDesc(D3D10_EFFECT_DESC* pDesc);
    ID3D10EffectConstantBuffer GetConstantBufferByIndex(UINT Index);
    ID3D10EffectConstantBuffer GetConstantBufferByName(LPCSTR Name);
    ID3D10EffectVariable GetVariableByIndex(UINT Index);
    ID3D10EffectVariable GetVariableByName(LPCSTR Name);
    ID3D10EffectVariable GetVariableBySemantic(LPCSTR Semantic);
    ID3D10EffectTechnique GetTechniqueByIndex(UINT Index);
    ID3D10EffectTechnique GetTechniqueByName(LPCSTR Name);
    HRESULT Optimize();
    BOOL IsOptimized();
}
alias D3D10_EFFECT_DESC = _D3D10_EFFECT_DESC;
struct _D3D10_EFFECT_DESC
{
    BOOL IsChildEffect;
    UINT ConstantBuffers;
    UINT SharedConstantBuffers;
    UINT GlobalVariables;
    UINT SharedGlobalVariables;
    UINT Techniques;
}
interface ID3D10EffectConstantBuffer: ID3D10EffectVariable
{
    static const iidof = parseGUID("56648f4d-cc8b-4444-a5ad-b5a3d76e91b3");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT SetConstantBuffer(ID3D10Buffer pConstantBuffer);
    HRESULT GetConstantBuffer(ID3D10Buffer* ppConstantBuffer);
    HRESULT SetTextureBuffer(ID3D10ShaderResourceView pTextureBuffer);
    HRESULT GetTextureBuffer(ID3D10ShaderResourceView* ppTextureBuffer);
}
interface ID3D10EffectVariable
{
    static const iidof = parseGUID("ae897105-00e6-45bf-bb8e-281dd6db8e1b");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
}
interface ID3D10EffectType
{
    static const iidof = parseGUID("4e9e1ddc-cd9d-4772-a837-00180b9b88fd");
    BOOL IsValid();
    HRESULT GetDesc(D3D10_EFFECT_TYPE_DESC* pDesc);
    ID3D10EffectType GetMemberTypeByIndex(UINT Index);
    ID3D10EffectType GetMemberTypeByName(LPCSTR Name);
    ID3D10EffectType GetMemberTypeBySemantic(LPCSTR Semantic);
    LPCSTR GetMemberName(UINT Index);
    LPCSTR GetMemberSemantic(UINT Index);
}
alias D3D10_EFFECT_TYPE_DESC = _D3D10_EFFECT_TYPE_DESC;
struct _D3D10_EFFECT_TYPE_DESC
{
    LPCSTR TypeName;
    D3D10_SHADER_VARIABLE_CLASS Class;
    D3D10_SHADER_VARIABLE_TYPE Type;
    UINT Elements;
    UINT Members;
    UINT Rows;
    UINT Columns;
    UINT PackedSize;
    UINT UnpackedSize;
    UINT Stride;
}
alias D3D10_EFFECT_VARIABLE_DESC = _D3D10_EFFECT_VARIABLE_DESC;
struct _D3D10_EFFECT_VARIABLE_DESC
{
    LPCSTR Name;
    LPCSTR Semantic;
    UINT Flags;
    UINT Annotations;
    UINT BufferOffset;
    UINT ExplicitBindPoint;
}
interface ID3D10EffectScalarVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("00e48f7b-d2c8-49e8-a86c-022dee53431f");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT SetFloat(float Value);
    HRESULT GetFloat(float* pValue);
    HRESULT SetFloatArray(float* pData, UINT Offset, UINT Count);
    HRESULT GetFloatArray(float* pData, UINT Offset, UINT Count);
    HRESULT SetInt(int Value);
    HRESULT GetInt(int* pValue);
    HRESULT SetIntArray(int* pData, UINT Offset, UINT Count);
    HRESULT GetIntArray(int* pData, UINT Offset, UINT Count);
    HRESULT SetBool(BOOL Value);
    HRESULT GetBool(BOOL* pValue);
    HRESULT SetBoolArray(BOOL* pData, UINT Offset, UINT Count);
    HRESULT GetBoolArray(BOOL* pData, UINT Offset, UINT Count);
}
interface ID3D10EffectVectorVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("62b98c44-1f82-4c67-bcd0-72cf8f217e81");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT SetBoolVector(BOOL* pData);
    HRESULT SetIntVector(int* pData);
    HRESULT SetFloatVector(float* pData);
    HRESULT GetBoolVector(BOOL* pData);
    HRESULT GetIntVector(int* pData);
    HRESULT GetFloatVector(float* pData);
    HRESULT SetBoolVectorArray(BOOL* pData, UINT Offset, UINT Count);
    HRESULT SetIntVectorArray(int* pData, UINT Offset, UINT Count);
    HRESULT SetFloatVectorArray(float* pData, UINT Offset, UINT Count);
    HRESULT GetBoolVectorArray(BOOL* pData, UINT Offset, UINT Count);
    HRESULT GetIntVectorArray(int* pData, UINT Offset, UINT Count);
    HRESULT GetFloatVectorArray(float* pData, UINT Offset, UINT Count);
}
interface ID3D10EffectMatrixVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("50666c24-b82f-4eed-a172-5b6e7e8522e0");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT ByteOffset, UINT ByteCount);
    HRESULT SetMatrix(float* pData);
    HRESULT GetMatrix(float* pData);
    HRESULT SetMatrixArray(float* pData, UINT Offset, UINT Count);
    HRESULT GetMatrixArray(float* pData, UINT Offset, UINT Count);
    HRESULT SetMatrixTranspose(float* pData);
    HRESULT GetMatrixTranspose(float* pData);
    HRESULT SetMatrixTransposeArray(float* pData, UINT Offset, UINT Count);
    HRESULT GetMatrixTransposeArray(float* pData, UINT Offset, UINT Count);
}
interface ID3D10EffectStringVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("71417501-8df9-4e0a-a78a-255f9756baff");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetString(LPCSTR* ppString);
    HRESULT GetStringArray(LPCSTR* ppStrings, UINT Offset, UINT Count);
}
interface ID3D10EffectShaderResourceVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("c0a7157b-d872-4b1d-8073-efc2acd4b1fc");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT SetResource(ID3D10ShaderResourceView pResource);
    HRESULT GetResource(ID3D10ShaderResourceView* ppResource);
    HRESULT SetResourceArray(ID3D10ShaderResourceView* ppResources, UINT Offset, UINT Count);
    HRESULT GetResourceArray(ID3D10ShaderResourceView* ppResources, UINT Offset, UINT Count);
}
interface ID3D10EffectRenderTargetViewVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("28ca0cc3-c2c9-40bb-b57f-67b737122b17");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT SetRenderTarget(ID3D10RenderTargetView pResource);
    HRESULT GetRenderTarget(ID3D10RenderTargetView* ppResource);
    HRESULT SetRenderTargetArray(ID3D10RenderTargetView* ppResources, UINT Offset, UINT Count);
    HRESULT GetRenderTargetArray(ID3D10RenderTargetView* ppResources, UINT Offset, UINT Count);
}
interface ID3D10EffectDepthStencilViewVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("3e02c918-cc79-4985-b622-2d92ad701623");
    BOOL IsValid();
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT SetDepthStencil(ID3D10DepthStencilView pResource);
    HRESULT GetDepthStencil(ID3D10DepthStencilView* ppResource);
    HRESULT SetDepthStencilArray(ID3D10DepthStencilView* ppResources, UINT Offset, UINT Count);
    HRESULT GetDepthStencilArray(ID3D10DepthStencilView* ppResources, UINT Offset, UINT Count);
}
interface ID3D10EffectShaderVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("80849279-c799-4797-8c33-0407a07d9e06");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetShaderDesc(UINT ShaderIndex, D3D10_EFFECT_SHADER_DESC* pDesc);
    HRESULT GetVertexShader(UINT ShaderIndex, ID3D10VertexShader* ppVS);
    HRESULT GetGeometryShader(UINT ShaderIndex, ID3D10GeometryShader* ppGS);
    HRESULT GetPixelShader(UINT ShaderIndex, ID3D10PixelShader* ppPS);
    HRESULT GetInputSignatureElementDesc(UINT ShaderIndex, UINT Element, D3D10_SIGNATURE_PARAMETER_DESC* pDesc);
    HRESULT GetOutputSignatureElementDesc(UINT ShaderIndex, UINT Element, D3D10_SIGNATURE_PARAMETER_DESC* pDesc);
}
interface ID3D10EffectBlendVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("1fcd2294-df6d-4eae-86b3-0e9160cfb07b");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetBlendState(UINT Index, ID3D10BlendState* ppBlendState);
    HRESULT GetBackingStore(UINT Index, D3D10_BLEND_DESC* pBlendDesc);
}
interface ID3D10EffectDepthStencilVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("af482368-330a-46a5-9a5c-01c71af24c8d");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetDepthStencilState(UINT Index, ID3D10DepthStencilState* ppDepthStencilState);
    HRESULT GetBackingStore(UINT Index, D3D10_DEPTH_STENCIL_DESC* pDepthStencilDesc);
}
interface ID3D10EffectRasterizerVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("21af9f0e-4d94-4ea9-9785-2cb76b8c0b34");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRasterizerState(UINT Index, ID3D10RasterizerState* ppRasterizerState);
    HRESULT GetBackingStore(UINT Index, D3D10_RASTERIZER_DESC* pRasterizerDesc);
}
interface ID3D10EffectSamplerVariable: ID3D10EffectVariable
{
    static const iidof = parseGUID("6530d5c7-07e9-4271-a418-e7ce4bd1e480");
    ID3D10EffectType GetType();
    HRESULT GetDesc(D3D10_EFFECT_VARIABLE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberByIndex(UINT Index);
    ID3D10EffectVariable GetMemberByName(LPCSTR Name);
    ID3D10EffectVariable GetMemberBySemantic(LPCSTR Semantic);
    ID3D10EffectVariable GetElement(UINT Index);
    ID3D10EffectConstantBuffer GetParentConstantBuffer();
    ID3D10EffectScalarVariable AsScalar();
    ID3D10EffectVectorVariable AsVector();
    ID3D10EffectMatrixVariable AsMatrix();
    ID3D10EffectStringVariable AsString();
    ID3D10EffectShaderResourceVariable AsShaderResource();
    ID3D10EffectRenderTargetViewVariable AsRenderTargetView();
    ID3D10EffectDepthStencilViewVariable AsDepthStencilView();
    ID3D10EffectConstantBuffer AsConstantBuffer();
    ID3D10EffectShaderVariable AsShader();
    ID3D10EffectBlendVariable AsBlend();
    ID3D10EffectDepthStencilVariable AsDepthStencil();
    ID3D10EffectRasterizerVariable AsRasterizer();
    ID3D10EffectSamplerVariable AsSampler();
    HRESULT SetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetRawValue(void* pData, UINT Offset, UINT ByteCount);
    HRESULT GetSampler(UINT Index, ID3D10SamplerState* ppSampler);
    HRESULT GetBackingStore(UINT Index, D3D10_SAMPLER_DESC* pSamplerDesc);
}
alias D3D10_EFFECT_SHADER_DESC = _D3D10_EFFECT_SHADER_DESC;
struct _D3D10_EFFECT_SHADER_DESC
{
    const(BYTE)* pInputSignature;
    BOOL IsInline;
    const(BYTE)* pBytecode;
    UINT BytecodeLength;
    LPCSTR SODecl;
    UINT NumInputSignatureEntries;
    UINT NumOutputSignatureEntries;
}
interface ID3D10EffectTechnique
{
    static const iidof = parseGUID("db122ce8-d1c9-4292-b237-24ed3de8b175");
    BOOL IsValid();
    HRESULT GetDesc(D3D10_TECHNIQUE_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    ID3D10EffectPass GetPassByIndex(UINT Index);
    ID3D10EffectPass GetPassByName(LPCSTR Name);
    HRESULT ComputeStateBlockMask(D3D10_STATE_BLOCK_MASK* pStateBlockMask);
}
alias D3D10_TECHNIQUE_DESC = _D3D10_TECHNIQUE_DESC;
struct _D3D10_TECHNIQUE_DESC
{
    LPCSTR Name;
    UINT Passes;
    UINT Annotations;
}
interface ID3D10EffectPass
{
    static const iidof = parseGUID("5cfbeb89-1a06-46e0-b282-e3f9bfa36a54");
    BOOL IsValid();
    HRESULT GetDesc(D3D10_PASS_DESC* pDesc);
    HRESULT GetVertexShaderDesc(D3D10_PASS_SHADER_DESC* pDesc);
    HRESULT GetGeometryShaderDesc(D3D10_PASS_SHADER_DESC* pDesc);
    HRESULT GetPixelShaderDesc(D3D10_PASS_SHADER_DESC* pDesc);
    ID3D10EffectVariable GetAnnotationByIndex(UINT Index);
    ID3D10EffectVariable GetAnnotationByName(LPCSTR Name);
    HRESULT Apply(UINT Flags);
    HRESULT ComputeStateBlockMask(D3D10_STATE_BLOCK_MASK* pStateBlockMask);
}
alias D3D10_PASS_DESC = _D3D10_PASS_DESC;
struct _D3D10_PASS_DESC
{
    LPCSTR Name;
    UINT Annotations;
    BYTE* pIAInputSignature;
    SIZE_T IAInputSignatureSize;
    UINT StencilRef;
    UINT SampleMask;
    FLOAT[4] BlendFactor;
}
alias D3D10_PASS_SHADER_DESC = _D3D10_PASS_SHADER_DESC;
struct _D3D10_PASS_SHADER_DESC
{
    ID3D10EffectShaderVariable pShaderVariable;
    UINT ShaderIndex;
}
alias D3D10_STATE_BLOCK_MASK = _D3D10_STATE_BLOCK_MASK;
struct _D3D10_STATE_BLOCK_MASK
{
    BYTE VS;
    BYTE[2] VSSamplers;
    BYTE[16] VSShaderResources;
    BYTE[2] VSConstantBuffers;
    BYTE GS;
    BYTE[2] GSSamplers;
    BYTE[16] GSShaderResources;
    BYTE[2] GSConstantBuffers;
    BYTE PS;
    BYTE[2] PSSamplers;
    BYTE[16] PSShaderResources;
    BYTE[2] PSConstantBuffers;
    BYTE[2] IAVertexBuffers;
    BYTE IAIndexBuffer;
    BYTE IAInputLayout;
    BYTE IAPrimitiveTopology;
    BYTE OMRenderTargets;
    BYTE OMDepthStencilState;
    BYTE OMBlendState;
    BYTE RSViewports;
    BYTE RSScissorRects;
    BYTE RSRasterizerState;
    BYTE SOBuffers;
    BYTE Predication;
}
