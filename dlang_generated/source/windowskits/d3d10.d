// This source code was generated by regenerator
module windowskits.d3d10;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.minwindef;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.winnt;
import core.sys.windows.basetsd;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.dxgiformat;
import windowskits.d3dcommon;
import windowskits.windef;
import windowskits.dxgicommon;
interface ID3D10Device: IUnknown
{
    static const iidof = parseGUID("9b7e4c0f-342c-4106-a19f-4f2704f689f0");
    void VSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, const(ID3D10Buffer)* ppConstantBuffers);
    void PSSetShaderResources(UINT StartSlot, UINT NumViews, const(ID3D10ShaderResourceView)* ppShaderResourceViews);
    void PSSetShader(ID3D10PixelShader pPixelShader);
    void PSSetSamplers(UINT StartSlot, UINT NumSamplers, const(ID3D10SamplerState)* ppSamplers);
    void VSSetShader(ID3D10VertexShader pVertexShader);
    void DrawIndexed(UINT IndexCount, UINT StartIndexLocation, INT BaseVertexLocation);
    void Draw(UINT VertexCount, UINT StartVertexLocation);
    void PSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, const(ID3D10Buffer)* ppConstantBuffers);
    void IASetInputLayout(ID3D10InputLayout pInputLayout);
    void IASetVertexBuffers(UINT StartSlot, UINT NumBuffers, const(ID3D10Buffer)* ppVertexBuffers, const(UINT)* pStrides, const(UINT)* pOffsets);
    void IASetIndexBuffer(ID3D10Buffer pIndexBuffer, DXGI_FORMAT Format, UINT Offset);
    void DrawIndexedInstanced(UINT IndexCountPerInstance, UINT InstanceCount, UINT StartIndexLocation, INT BaseVertexLocation, UINT StartInstanceLocation);
    void DrawInstanced(UINT VertexCountPerInstance, UINT InstanceCount, UINT StartVertexLocation, UINT StartInstanceLocation);
    void GSSetConstantBuffers(UINT StartSlot, UINT NumBuffers, const(ID3D10Buffer)* ppConstantBuffers);
    void GSSetShader(ID3D10GeometryShader pShader);
    void IASetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY Topology);
    void VSSetShaderResources(UINT StartSlot, UINT NumViews, const(ID3D10ShaderResourceView)* ppShaderResourceViews);
    void VSSetSamplers(UINT StartSlot, UINT NumSamplers, const(ID3D10SamplerState)* ppSamplers);
    void SetPredication(ID3D10Predicate pPredicate, BOOL PredicateValue);
    void GSSetShaderResources(UINT StartSlot, UINT NumViews, const(ID3D10ShaderResourceView)* ppShaderResourceViews);
    void GSSetSamplers(UINT StartSlot, UINT NumSamplers, const(ID3D10SamplerState)* ppSamplers);
    void OMSetRenderTargets(UINT NumViews, const(ID3D10RenderTargetView)* ppRenderTargetViews, ID3D10DepthStencilView pDepthStencilView);
    void OMSetBlendState(ID3D10BlendState pBlendState, FLOAT[4] BlendFactor, UINT SampleMask);
    void OMSetDepthStencilState(ID3D10DepthStencilState pDepthStencilState, UINT StencilRef);
    void SOSetTargets(UINT NumBuffers, const(ID3D10Buffer)* ppSOTargets, const(UINT)* pOffsets);
    void DrawAuto();
    void RSSetState(ID3D10RasterizerState pRasterizerState);
    void RSSetViewports(UINT NumViewports, const(D3D10_VIEWPORT)* pViewports);
    void RSSetScissorRects(UINT NumRects, const(D3D10_RECT)* pRects);
    void CopySubresourceRegion(ID3D10Resource pDstResource, UINT DstSubresource, UINT DstX, UINT DstY, UINT DstZ, ID3D10Resource pSrcResource, UINT SrcSubresource, const(D3D10_BOX)* pSrcBox);
    void CopyResource(ID3D10Resource pDstResource, ID3D10Resource pSrcResource);
    void UpdateSubresource(ID3D10Resource pDstResource, UINT DstSubresource, const(D3D10_BOX)* pDstBox, const(void)* pSrcData, UINT SrcRowPitch, UINT SrcDepthPitch);
    void ClearRenderTargetView(ID3D10RenderTargetView pRenderTargetView, FLOAT[4] ColorRGBA);
    void ClearDepthStencilView(ID3D10DepthStencilView pDepthStencilView, UINT ClearFlags, FLOAT Depth, UINT8 Stencil);
    void GenerateMips(ID3D10ShaderResourceView pShaderResourceView);
    void ResolveSubresource(ID3D10Resource pDstResource, UINT DstSubresource, ID3D10Resource pSrcResource, UINT SrcSubresource, DXGI_FORMAT Format);
    void VSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
    void PSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
    void PSGetShader(ID3D10PixelShader* ppPixelShader);
    void PSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
    void VSGetShader(ID3D10VertexShader* ppVertexShader);
    void PSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
    void IAGetInputLayout(ID3D10InputLayout* ppInputLayout);
    void IAGetVertexBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppVertexBuffers, UINT* pStrides, UINT* pOffsets);
    void IAGetIndexBuffer(ID3D10Buffer* pIndexBuffer, DXGI_FORMAT* Format, UINT* Offset);
    void GSGetConstantBuffers(UINT StartSlot, UINT NumBuffers, ID3D10Buffer* ppConstantBuffers);
    void GSGetShader(ID3D10GeometryShader* ppGeometryShader);
    void IAGetPrimitiveTopology(D3D10_PRIMITIVE_TOPOLOGY* pTopology);
    void VSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
    void VSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
    void GetPredication(ID3D10Predicate* ppPredicate, BOOL* pPredicateValue);
    void GSGetShaderResources(UINT StartSlot, UINT NumViews, ID3D10ShaderResourceView* ppShaderResourceViews);
    void GSGetSamplers(UINT StartSlot, UINT NumSamplers, ID3D10SamplerState* ppSamplers);
    void OMGetRenderTargets(UINT NumViews, ID3D10RenderTargetView* ppRenderTargetViews, ID3D10DepthStencilView* ppDepthStencilView);
    void OMGetBlendState(ID3D10BlendState* ppBlendState, FLOAT[4] BlendFactor, UINT* pSampleMask);
    void OMGetDepthStencilState(ID3D10DepthStencilState* ppDepthStencilState, UINT* pStencilRef);
    void SOGetTargets(UINT NumBuffers, ID3D10Buffer* ppSOTargets, UINT* pOffsets);
    void RSGetState(ID3D10RasterizerState* ppRasterizerState);
    void RSGetViewports(UINT* NumViewports, D3D10_VIEWPORT* pViewports);
    void RSGetScissorRects(UINT* NumRects, D3D10_RECT* pRects);
    HRESULT GetDeviceRemovedReason();
    HRESULT SetExceptionMode(UINT RaiseFlags);
    UINT GetExceptionMode();
    HRESULT GetPrivateData(ref GUID guid, UINT* pDataSize, void* pData);
    HRESULT SetPrivateData(ref GUID guid, UINT DataSize, const(void)* pData);
    HRESULT SetPrivateDataInterface(ref GUID guid, const(IUnknown) pData);
    void ClearState();
    void Flush();
    HRESULT CreateBuffer(const(D3D10_BUFFER_DESC)* pDesc, const(D3D10_SUBRESOURCE_DATA)* pInitialData, ID3D10Buffer* ppBuffer);
    HRESULT CreateTexture1D(const(D3D10_TEXTURE1D_DESC)* pDesc, const(D3D10_SUBRESOURCE_DATA)* pInitialData, ID3D10Texture1D* ppTexture1D);
    HRESULT CreateTexture2D(const(D3D10_TEXTURE2D_DESC)* pDesc, const(D3D10_SUBRESOURCE_DATA)* pInitialData, ID3D10Texture2D* ppTexture2D);
    HRESULT CreateTexture3D(const(D3D10_TEXTURE3D_DESC)* pDesc, const(D3D10_SUBRESOURCE_DATA)* pInitialData, ID3D10Texture3D* ppTexture3D);
    HRESULT CreateShaderResourceView(ID3D10Resource pResource, const(D3D10_SHADER_RESOURCE_VIEW_DESC)* pDesc, ID3D10ShaderResourceView* ppSRView);
    HRESULT CreateRenderTargetView(ID3D10Resource pResource, const(D3D10_RENDER_TARGET_VIEW_DESC)* pDesc, ID3D10RenderTargetView* ppRTView);
    HRESULT CreateDepthStencilView(ID3D10Resource pResource, const(D3D10_DEPTH_STENCIL_VIEW_DESC)* pDesc, ID3D10DepthStencilView* ppDepthStencilView);
    HRESULT CreateInputLayout(const(D3D10_INPUT_ELEMENT_DESC)* pInputElementDescs, UINT NumElements, const(void)* pShaderBytecodeWithInputSignature, SIZE_T BytecodeLength, ID3D10InputLayout* ppInputLayout);
    HRESULT CreateVertexShader(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10VertexShader* ppVertexShader);
    HRESULT CreateGeometryShader(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10GeometryShader* ppGeometryShader);
    HRESULT CreateGeometryShaderWithStreamOutput(const(void)* pShaderBytecode, SIZE_T BytecodeLength, const(D3D10_SO_DECLARATION_ENTRY)* pSODeclaration, UINT NumEntries, UINT OutputStreamStride, ID3D10GeometryShader* ppGeometryShader);
    HRESULT CreatePixelShader(const(void)* pShaderBytecode, SIZE_T BytecodeLength, ID3D10PixelShader* ppPixelShader);
    HRESULT CreateBlendState(const(D3D10_BLEND_DESC)* pBlendStateDesc, ID3D10BlendState* ppBlendState);
    HRESULT CreateDepthStencilState(const(D3D10_DEPTH_STENCIL_DESC)* pDepthStencilDesc, ID3D10DepthStencilState* ppDepthStencilState);
    HRESULT CreateRasterizerState(const(D3D10_RASTERIZER_DESC)* pRasterizerDesc, ID3D10RasterizerState* ppRasterizerState);
    HRESULT CreateSamplerState(const(D3D10_SAMPLER_DESC)* pSamplerDesc, ID3D10SamplerState* ppSamplerState);
    HRESULT CreateQuery(const(D3D10_QUERY_DESC)* pQueryDesc, ID3D10Query* ppQuery);
    HRESULT CreatePredicate(const(D3D10_QUERY_DESC)* pPredicateDesc, ID3D10Predicate* ppPredicate);
    HRESULT CreateCounter(const(D3D10_COUNTER_DESC)* pCounterDesc, ID3D10Counter* ppCounter);
    HRESULT CheckFormatSupport(DXGI_FORMAT Format, UINT* pFormatSupport);
    HRESULT CheckMultisampleQualityLevels(DXGI_FORMAT Format, UINT SampleCount, UINT* pNumQualityLevels);
    void CheckCounterInfo(D3D10_COUNTER_INFO* pCounterInfo);
    HRESULT CheckCounter(const(D3D10_COUNTER_DESC)* pDesc, D3D10_COUNTER_TYPE* pType, UINT* pActiveCounters, LPSTR szName, UINT* pNameLength, LPSTR szUnits, UINT* pUnitsLength, LPSTR szDescription, UINT* pDescriptionLength);
    UINT GetCreationFlags();
    HRESULT OpenSharedResource(HANDLE hResource, ref IID ReturnedInterface, void** ppResource);
    void SetTextFilterSize(UINT Width, UINT Height);
    void GetTextFilterSize(UINT* pWidth, UINT* pHeight);
}
interface ID3D10Buffer: ID3D10Resource
{
    static const iidof = parseGUID("9b7e4c02-342c-4106-a19f-4f2704f689f0");
    HRESULT Map(D3D10_MAP MapType, UINT MapFlags, void** ppData);
    void Unmap();
    void GetDesc(D3D10_BUFFER_DESC* pDesc);
}
interface ID3D10Resource: ID3D10DeviceChild
{
    static const iidof = parseGUID("9b7e4c01-342c-4106-a19f-4f2704f689f0");
    void GetType(D3D10_RESOURCE_DIMENSION* rType);
    void SetEvictionPriority(UINT EvictionPriority);
    UINT GetEvictionPriority();
}
interface ID3D10DeviceChild: IUnknown
{
    static const iidof = parseGUID("9b7e4c00-342c-4106-a19f-4f2704f689f0");
    void GetDevice(ID3D10Device* ppDevice);
    HRESULT GetPrivateData(ref GUID guid, UINT* pDataSize, void* pData);
    HRESULT SetPrivateData(ref GUID guid, UINT DataSize, const(void)* pData);
    HRESULT SetPrivateDataInterface(ref GUID guid, const(IUnknown) pData);
}
enum D3D10_RESOURCE_DIMENSION
{
    _UNKNOWN = 0x0,
    _BUFFER = 0x1,
    _TEXTURE1D = 0x2,
    _TEXTURE2D = 0x3,
    _TEXTURE3D = 0x4,
}
enum D3D10_MAP
{
    _READ = 0x1,
    _WRITE = 0x2,
    _READ_WRITE = 0x3,
    _WRITE_DISCARD = 0x4,
    _WRITE_NO_OVERWRITE = 0x5,
}
struct D3D10_BUFFER_DESC
{
    UINT ByteWidth;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}
enum D3D10_USAGE
{
    _DEFAULT = 0x0,
    _IMMUTABLE = 0x1,
    _DYNAMIC = 0x2,
    _STAGING = 0x3,
}
interface ID3D10ShaderResourceView: ID3D10View
{
    static const iidof = parseGUID("9b7e4c07-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_SHADER_RESOURCE_VIEW_DESC* pDesc);
}
interface ID3D10View: ID3D10DeviceChild
{
    static const iidof = parseGUID("c902b03f-60a7-49ba-9936-2a3ab37a7e33");
    void GetResource(ID3D10Resource* ppResource);
}
struct D3D10_SHADER_RESOURCE_VIEW_DESC
{
    DXGI_FORMAT Format;
    D3D10_SRV_DIMENSION ViewDimension;
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
    }
}
alias D3D10_SRV_DIMENSION = D3D_SRV_DIMENSION;
struct D3D10_BUFFER_SRV
{
    union {
        UINT FirstElement;
        UINT ElementOffset;
    }
    union {
        UINT NumElements;
        UINT ElementWidth;
    }
}
struct D3D10_TEX1D_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
}
struct D3D10_TEX1D_ARRAY_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2D_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
}
struct D3D10_TEX2D_ARRAY_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2DMS_SRV
{
    UINT UnusedField_NothingToDefine;
}
struct D3D10_TEX2DMS_ARRAY_SRV
{
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX3D_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
}
struct D3D10_TEXCUBE_SRV
{
    UINT MostDetailedMip;
    UINT MipLevels;
}
interface ID3D10PixelShader: ID3D10DeviceChild
{
    static const iidof = parseGUID("4968b601-9d00-4cde-8346-8e7f675819b6");
}
interface ID3D10SamplerState: ID3D10DeviceChild
{
    static const iidof = parseGUID("9b7e4c0c-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_SAMPLER_DESC* pDesc);
}
struct D3D10_SAMPLER_DESC
{
    D3D10_FILTER Filter;
    D3D10_TEXTURE_ADDRESS_MODE AddressU;
    D3D10_TEXTURE_ADDRESS_MODE AddressV;
    D3D10_TEXTURE_ADDRESS_MODE AddressW;
    FLOAT MipLODBias;
    UINT MaxAnisotropy;
    D3D10_COMPARISON_FUNC ComparisonFunc;
    FLOAT[4] BorderColor;
    FLOAT MinLOD;
    FLOAT MaxLOD;
}
enum D3D10_FILTER
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
    _COMPARISON_MIN_MAG_MIP_POINT = 0x80,
    _COMPARISON_MIN_MAG_POINT_MIP_LINEAR = 0x81,
    _COMPARISON_MIN_POINT_MAG_LINEAR_MIP_POINT = 0x84,
    _COMPARISON_MIN_POINT_MAG_MIP_LINEAR = 0x85,
    _COMPARISON_MIN_LINEAR_MAG_MIP_POINT = 0x90,
    _COMPARISON_MIN_LINEAR_MAG_POINT_MIP_LINEAR = 0x91,
    _COMPARISON_MIN_MAG_LINEAR_MIP_POINT = 0x94,
    _COMPARISON_MIN_MAG_MIP_LINEAR = 0x95,
    _COMPARISON_ANISOTROPIC = 0xd5,
    _TEXT_1BIT = 0x80000000,
}
enum D3D10_TEXTURE_ADDRESS_MODE
{
    _WRAP = 0x1,
    _MIRROR = 0x2,
    _CLAMP = 0x3,
    _BORDER = 0x4,
    _MIRROR_ONCE = 0x5,
}
enum D3D10_COMPARISON_FUNC
{
    _NEVER = 0x1,
    _LESS = 0x2,
    _EQUAL = 0x3,
    _LESS_EQUAL = 0x4,
    _GREATER = 0x5,
    _NOT_EQUAL = 0x6,
    _GREATER_EQUAL = 0x7,
    _ALWAYS = 0x8,
}
interface ID3D10VertexShader: ID3D10DeviceChild
{
    static const iidof = parseGUID("9b7e4c0a-342c-4106-a19f-4f2704f689f0");
}
interface ID3D10InputLayout: ID3D10DeviceChild
{
    static const iidof = parseGUID("9b7e4c0b-342c-4106-a19f-4f2704f689f0");
}
interface ID3D10GeometryShader: ID3D10DeviceChild
{
    static const iidof = parseGUID("6316be88-54cd-4040-ab44-20461bc81f68");
}
alias D3D10_PRIMITIVE_TOPOLOGY = D3D_PRIMITIVE_TOPOLOGY;
interface ID3D10Predicate: ID3D10Query
{
    static const iidof = parseGUID("9b7e4c10-342c-4106-a19f-4f2704f689f0");
}
interface ID3D10Query: ID3D10Asynchronous
{
    static const iidof = parseGUID("9b7e4c0e-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_QUERY_DESC* pDesc);
}
interface ID3D10Asynchronous: ID3D10DeviceChild
{
    static const iidof = parseGUID("9b7e4c0d-342c-4106-a19f-4f2704f689f0");
    void Begin();
    void End();
    HRESULT GetData(void* pData, UINT DataSize, UINT GetDataFlags);
    UINT GetDataSize();
}
struct D3D10_QUERY_DESC
{
    D3D10_QUERY Query;
    UINT MiscFlags;
}
enum D3D10_QUERY
{
    _EVENT = 0x0,
    _OCCLUSION = 0x1,
    _TIMESTAMP = 0x2,
    _TIMESTAMP_DISJOINT = 0x3,
    _PIPELINE_STATISTICS = 0x4,
    _OCCLUSION_PREDICATE = 0x5,
    _SO_STATISTICS = 0x6,
    _SO_OVERFLOW_PREDICATE = 0x7,
}
interface ID3D10RenderTargetView: ID3D10View
{
    static const iidof = parseGUID("9b7e4c08-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_RENDER_TARGET_VIEW_DESC* pDesc);
}
struct D3D10_RENDER_TARGET_VIEW_DESC
{
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
    }
}
enum D3D10_RTV_DIMENSION
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
}
struct D3D10_BUFFER_RTV
{
    union {
        UINT FirstElement;
        UINT ElementOffset;
    }
    union {
        UINT NumElements;
        UINT ElementWidth;
    }
}
struct D3D10_TEX1D_RTV
{
    UINT MipSlice;
}
struct D3D10_TEX1D_ARRAY_RTV
{
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2D_RTV
{
    UINT MipSlice;
}
struct D3D10_TEX2D_ARRAY_RTV
{
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2DMS_RTV
{
    UINT UnusedField_NothingToDefine;
}
struct D3D10_TEX2DMS_ARRAY_RTV
{
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX3D_RTV
{
    UINT MipSlice;
    UINT FirstWSlice;
    UINT WSize;
}
interface ID3D10DepthStencilView: ID3D10View
{
    static const iidof = parseGUID("9b7e4c09-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_DEPTH_STENCIL_VIEW_DESC* pDesc);
}
struct D3D10_DEPTH_STENCIL_VIEW_DESC
{
    DXGI_FORMAT Format;
    D3D10_DSV_DIMENSION ViewDimension;
    union {
        D3D10_TEX1D_DSV Texture1D;
        D3D10_TEX1D_ARRAY_DSV Texture1DArray;
        D3D10_TEX2D_DSV Texture2D;
        D3D10_TEX2D_ARRAY_DSV Texture2DArray;
        D3D10_TEX2DMS_DSV Texture2DMS;
        D3D10_TEX2DMS_ARRAY_DSV Texture2DMSArray;
    }
}
enum D3D10_DSV_DIMENSION
{
    _UNKNOWN = 0x0,
    _TEXTURE1D = 0x1,
    _TEXTURE1DARRAY = 0x2,
    _TEXTURE2D = 0x3,
    _TEXTURE2DARRAY = 0x4,
    _TEXTURE2DMS = 0x5,
    _TEXTURE2DMSARRAY = 0x6,
}
struct D3D10_TEX1D_DSV
{
    UINT MipSlice;
}
struct D3D10_TEX1D_ARRAY_DSV
{
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2D_DSV
{
    UINT MipSlice;
}
struct D3D10_TEX2D_ARRAY_DSV
{
    UINT MipSlice;
    UINT FirstArraySlice;
    UINT ArraySize;
}
struct D3D10_TEX2DMS_DSV
{
    UINT UnusedField_NothingToDefine;
}
struct D3D10_TEX2DMS_ARRAY_DSV
{
    UINT FirstArraySlice;
    UINT ArraySize;
}
interface ID3D10BlendState: ID3D10DeviceChild
{
    static const iidof = parseGUID("edad8d19-8a35-4d6d-8566-2ea276cde161");
    void GetDesc(D3D10_BLEND_DESC* pDesc);
}
struct D3D10_BLEND_DESC
{
    BOOL AlphaToCoverageEnable;
    BOOL[8] BlendEnable;
    D3D10_BLEND SrcBlend;
    D3D10_BLEND DestBlend;
    D3D10_BLEND_OP BlendOp;
    D3D10_BLEND SrcBlendAlpha;
    D3D10_BLEND DestBlendAlpha;
    D3D10_BLEND_OP BlendOpAlpha;
    UINT8[8] RenderTargetWriteMask;
}
enum D3D10_BLEND
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
    _SRC1_COLOR = 0x10,
    _INV_SRC1_COLOR = 0x11,
    _SRC1_ALPHA = 0x12,
    _INV_SRC1_ALPHA = 0x13,
}
enum D3D10_BLEND_OP
{
    _ADD = 0x1,
    _SUBTRACT = 0x2,
    _REV_SUBTRACT = 0x3,
    _MIN = 0x4,
    _MAX = 0x5,
}
interface ID3D10DepthStencilState: ID3D10DeviceChild
{
    static const iidof = parseGUID("2b4b1cc8-a4ad-41f8-8322-ca86fc3ec675");
    void GetDesc(D3D10_DEPTH_STENCIL_DESC* pDesc);
}
struct D3D10_DEPTH_STENCIL_DESC
{
    BOOL DepthEnable;
    D3D10_DEPTH_WRITE_MASK DepthWriteMask;
    D3D10_COMPARISON_FUNC DepthFunc;
    BOOL StencilEnable;
    UINT8 StencilReadMask;
    UINT8 StencilWriteMask;
    D3D10_DEPTH_STENCILOP_DESC FrontFace;
    D3D10_DEPTH_STENCILOP_DESC BackFace;
}
enum D3D10_DEPTH_WRITE_MASK
{
    _ZERO = 0x0,
    _ALL = 0x1,
}
struct D3D10_DEPTH_STENCILOP_DESC
{
    D3D10_STENCIL_OP StencilFailOp;
    D3D10_STENCIL_OP StencilDepthFailOp;
    D3D10_STENCIL_OP StencilPassOp;
    D3D10_COMPARISON_FUNC StencilFunc;
}
enum D3D10_STENCIL_OP
{
    _KEEP = 0x1,
    _ZERO = 0x2,
    _REPLACE = 0x3,
    _INCR_SAT = 0x4,
    _DECR_SAT = 0x5,
    _INVERT = 0x6,
    _INCR = 0x7,
    _DECR = 0x8,
}
interface ID3D10RasterizerState: ID3D10DeviceChild
{
    static const iidof = parseGUID("a2a07292-89af-4345-be2e-c53d9fbb6e9f");
    void GetDesc(D3D10_RASTERIZER_DESC* pDesc);
}
struct D3D10_RASTERIZER_DESC
{
    D3D10_FILL_MODE FillMode;
    D3D10_CULL_MODE CullMode;
    BOOL FrontCounterClockwise;
    INT DepthBias;
    FLOAT DepthBiasClamp;
    FLOAT SlopeScaledDepthBias;
    BOOL DepthClipEnable;
    BOOL ScissorEnable;
    BOOL MultisampleEnable;
    BOOL AntialiasedLineEnable;
}
enum D3D10_FILL_MODE
{
    _WIREFRAME = 0x2,
    _SOLID = 0x3,
}
enum D3D10_CULL_MODE
{
    _NONE = 0x1,
    _FRONT = 0x2,
    _BACK = 0x3,
}
struct D3D10_VIEWPORT
{
    INT TopLeftX;
    INT TopLeftY;
    UINT Width;
    UINT Height;
    FLOAT MinDepth;
    FLOAT MaxDepth;
}
alias D3D10_RECT = RECT;
struct D3D10_BOX
{
    UINT left;
    UINT top;
    UINT front;
    UINT right;
    UINT bottom;
    UINT back;
}
struct D3D10_SUBRESOURCE_DATA
{
    const(void)* pSysMem;
    UINT SysMemPitch;
    UINT SysMemSlicePitch;
}
struct D3D10_TEXTURE1D_DESC
{
    UINT Width;
    UINT MipLevels;
    UINT ArraySize;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}
interface ID3D10Texture1D: ID3D10Resource
{
    static const iidof = parseGUID("9b7e4c03-342c-4106-a19f-4f2704f689f0");
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, void** ppData);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE1D_DESC* pDesc);
}
struct D3D10_TEXTURE2D_DESC
{
    UINT Width;
    UINT Height;
    UINT MipLevels;
    UINT ArraySize;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}
interface ID3D10Texture2D: ID3D10Resource
{
    static const iidof = parseGUID("9b7e4c04-342c-4106-a19f-4f2704f689f0");
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, D3D10_MAPPED_TEXTURE2D* pMappedTex2D);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE2D_DESC* pDesc);
}
struct D3D10_MAPPED_TEXTURE2D
{
    void* pData;
    UINT RowPitch;
}
struct D3D10_TEXTURE3D_DESC
{
    UINT Width;
    UINT Height;
    UINT Depth;
    UINT MipLevels;
    DXGI_FORMAT Format;
    D3D10_USAGE Usage;
    UINT BindFlags;
    UINT CPUAccessFlags;
    UINT MiscFlags;
}
interface ID3D10Texture3D: ID3D10Resource
{
    static const iidof = parseGUID("9b7e4c05-342c-4106-a19f-4f2704f689f0");
    HRESULT Map(UINT Subresource, D3D10_MAP MapType, UINT MapFlags, D3D10_MAPPED_TEXTURE3D* pMappedTex3D);
    void Unmap(UINT Subresource);
    void GetDesc(D3D10_TEXTURE3D_DESC* pDesc);
}
struct D3D10_MAPPED_TEXTURE3D
{
    void* pData;
    UINT RowPitch;
    UINT DepthPitch;
}
struct D3D10_INPUT_ELEMENT_DESC
{
    LPCSTR SemanticName;
    UINT SemanticIndex;
    DXGI_FORMAT Format;
    UINT InputSlot;
    UINT AlignedByteOffset;
    D3D10_INPUT_CLASSIFICATION InputSlotClass;
    UINT InstanceDataStepRate;
}
enum D3D10_INPUT_CLASSIFICATION
{
    _VERTEX_DATA = 0x0,
    _INSTANCE_DATA = 0x1,
}
struct D3D10_SO_DECLARATION_ENTRY
{
    LPCSTR SemanticName;
    UINT SemanticIndex;
    BYTE StartComponent;
    BYTE ComponentCount;
    BYTE OutputSlot;
}
struct D3D10_COUNTER_DESC
{
    D3D10_COUNTER Counter;
    UINT MiscFlags;
}
enum D3D10_COUNTER
{
    _GPU_IDLE = 0x0,
    _VERTEX_PROCESSING = 0x1,
    _GEOMETRY_PROCESSING = 0x2,
    _PIXEL_PROCESSING = 0x3,
    _OTHER_GPU_PROCESSING = 0x4,
    _HOST_ADAPTER_BANDWIDTH_UTILIZATION = 0x5,
    _LOCAL_VIDMEM_BANDWIDTH_UTILIZATION = 0x6,
    _VERTEX_THROUGHPUT_UTILIZATION = 0x7,
    _TRIANGLE_SETUP_THROUGHPUT_UTILIZATION = 0x8,
    _FILLRATE_THROUGHPUT_UTILIZATION = 0x9,
    _VS_MEMORY_LIMITED = 0xa,
    _VS_COMPUTATION_LIMITED = 0xb,
    _GS_MEMORY_LIMITED = 0xc,
    _GS_COMPUTATION_LIMITED = 0xd,
    _PS_MEMORY_LIMITED = 0xe,
    _PS_COMPUTATION_LIMITED = 0xf,
    _POST_TRANSFORM_CACHE_HIT_RATE = 0x10,
    _TEXTURE_CACHE_HIT_RATE = 0x11,
    _DEVICE_DEPENDENT_0 = 0x40000000,
}
interface ID3D10Counter: ID3D10Asynchronous
{
    static const iidof = parseGUID("9b7e4c11-342c-4106-a19f-4f2704f689f0");
    void GetDesc(D3D10_COUNTER_DESC* pDesc);
}
struct D3D10_COUNTER_INFO
{
    D3D10_COUNTER LastDeviceDependentCounter;
    UINT NumSimultaneousCounters;
    UINT8 NumDetectableParallelUnits;
}
enum D3D10_COUNTER_TYPE
{
    _FLOAT32 = 0x0,
    _UINT16 = 0x1,
    _UINT32 = 0x2,
    _UINT64 = 0x3,
}
