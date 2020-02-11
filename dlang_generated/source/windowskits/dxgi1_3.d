// This source code was generated by regenerator
module windowskits.dxgi1_3;
import windowskits.dxgi1_2;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.winnt;
import windowskits.minwindef;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.windef;
import windowskits.dxgi;
import windowskits.dxgiformat;
import windowskits.guiddef;
import core.sys.windows.basetyps;
enum DXGI_CREATE_FACTORY_DEBUG = 0x1;
interface IDXGIDevice3: IDXGIDevice2
{
    static const iidof = parseGUID("6007896c-3244-4afd-bf18-a6d3beda5023");
    void Trim();
}
interface IDXGISwapChain2: IDXGISwapChain1
{
    static const iidof = parseGUID("a8be2ac4-199f-4946-b331-79599fb98de7");
    HRESULT SetSourceSize(UINT Width, UINT Height);
    HRESULT GetSourceSize(UINT* pWidth, UINT* pHeight);
    HRESULT SetMaximumFrameLatency(UINT MaxLatency);
    HRESULT GetMaximumFrameLatency(UINT* pMaxLatency);
    HANDLE GetFrameLatencyWaitableObject();
    HRESULT SetMatrixTransform(const(DXGI_MATRIX_3X2_F)* pMatrix);
    HRESULT GetMatrixTransform(DXGI_MATRIX_3X2_F* pMatrix);
}
struct DXGI_MATRIX_3X2_F
{
    FLOAT _11;
    FLOAT _12;
    FLOAT _21;
    FLOAT _22;
    FLOAT _31;
    FLOAT _32;
}
interface IDXGIOutput2: IDXGIOutput1
{
    static const iidof = parseGUID("595e39d1-2724-4663-99b1-da969de28364");
    BOOL SupportsOverlays();
}
interface IDXGIFactory3: IDXGIFactory2
{
    static const iidof = parseGUID("25483823-cd46-4c7d-86ca-47aa95b837bd");
    UINT GetCreationFlags();
}
interface IDXGIDecodeSwapChain: IUnknown
{
    static const iidof = parseGUID("2633066b-4514-4c7a-8fd8-12ea98059d18");
    HRESULT PresentBuffer(UINT BufferToPresent, UINT SyncInterval, UINT Flags);
    HRESULT SetSourceRect(const(RECT)* pRect);
    HRESULT SetTargetRect(const(RECT)* pRect);
    HRESULT SetDestSize(UINT Width, UINT Height);
    HRESULT GetSourceRect(RECT* pRect);
    HRESULT GetTargetRect(RECT* pRect);
    HRESULT GetDestSize(UINT* pWidth, UINT* pHeight);
    HRESULT SetColorSpace(DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS ColorSpace);
    DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS GetColorSpace();
}
enum DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS
{
    _NOMINAL_RANGE = 0x1,
    _BT709 = 0x2,
    _xvYCC = 0x4,
}
interface IDXGIFactoryMedia: IUnknown
{
    static const iidof = parseGUID("41e7d1f2-a591-4f7b-a2e5-fa9c843e1c12");
    HRESULT CreateSwapChainForCompositionSurfaceHandle(IUnknown pDevice, HANDLE hSurface, const(DXGI_SWAP_CHAIN_DESC1)* pDesc, IDXGIOutput pRestrictToOutput, IDXGISwapChain1* ppSwapChain);
    HRESULT CreateDecodeSwapChainForCompositionSurfaceHandle(IUnknown pDevice, HANDLE hSurface, DXGI_DECODE_SWAP_CHAIN_DESC* pDesc, IDXGIResource pYuvDecodeBuffers, IDXGIOutput pRestrictToOutput, IDXGIDecodeSwapChain* ppSwapChain);
}
struct DXGI_DECODE_SWAP_CHAIN_DESC
{
    UINT Flags;
}
interface IDXGISwapChainMedia: IUnknown
{
    static const iidof = parseGUID("dd95b90b-f05f-4f6a-bd65-25bfb264bd84");
    HRESULT GetFrameStatisticsMedia(DXGI_FRAME_STATISTICS_MEDIA* pStats);
    HRESULT SetPresentDuration(UINT Duration);
    HRESULT CheckPresentDurationSupport(UINT DesiredPresentDuration, UINT* pClosestSmallerPresentDuration, UINT* pClosestLargerPresentDuration);
}
struct DXGI_FRAME_STATISTICS_MEDIA
{
    UINT PresentCount;
    UINT PresentRefreshCount;
    UINT SyncRefreshCount;
    LARGE_INTEGER SyncQPCTime;
    LARGE_INTEGER SyncGPUTime;
    DXGI_FRAME_PRESENTATION_MODE CompositionMode;
    UINT ApprovedPresentDuration;
}
enum DXGI_FRAME_PRESENTATION_MODE
{
    _COMPOSED = 0x0,
    _OVERLAY = 0x1,
    _NONE = 0x2,
    _COMPOSITION_FAILURE = 0x3,
}
interface IDXGIOutput3: IDXGIOutput2
{
    static const iidof = parseGUID("8a6bb301-7e7e-41f4-a8e0-5b32f7f99b18");
    HRESULT CheckOverlaySupport(DXGI_FORMAT EnumFormat, IUnknown pConcernedDevice, UINT* pFlags);
}
enum DXGI_OVERLAY_SUPPORT_FLAG
{
    _DIRECT = 0x1,
    _SCALING = 0x2,
}
extern(C) HRESULT CreateDXGIFactory2(UINT Flags, ref IID riid, void** ppFactory);
extern(C) HRESULT DXGIGetDebugInterface1(UINT Flags, ref IID riid, void** pDebug);
