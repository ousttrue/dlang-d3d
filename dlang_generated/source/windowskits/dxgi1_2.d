// This source code was generated by regenerator
module windowskits.dxgi1_2;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.minwindef;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.dxgi;
import windowskits.dxgitype;
import windowskits.winnt;
import core.sys.windows.basetsd;
import windowskits.windef;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.minwinbase;
import windowskits.dxgiformat;
import windowskits.dxgicommon;
enum DXGI_ENUM_MODES_STEREO = ( 4UL );
enum DXGI_ENUM_MODES_DISABLED_STEREO = ( 8UL );
enum DXGI_SHARED_RESOURCE_READ = ( 0x80000000L );
enum DXGI_SHARED_RESOURCE_WRITE = ( 1 );
interface IDXGIDisplayControl: IUnknown
{
    static const iidof = parseGUID("ea9dbf1a-c88e-4486-854a-98aa0138f30c");
    BOOL IsStereoEnabled();
    void SetStereoEnabled(BOOL enabled);
}
interface IDXGIOutputDuplication: IDXGIObject
{
    static const iidof = parseGUID("191cfac3-a341-470d-b26e-a864f428319c");
    void GetDesc(DXGI_OUTDUPL_DESC* pDesc);
    HRESULT AcquireNextFrame(UINT TimeoutInMilliseconds, DXGI_OUTDUPL_FRAME_INFO* pFrameInfo, IDXGIResource* ppDesktopResource);
    HRESULT GetFrameDirtyRects(UINT DirtyRectsBufferSize, RECT* pDirtyRectsBuffer, UINT* pDirtyRectsBufferSizeRequired);
    HRESULT GetFrameMoveRects(UINT MoveRectsBufferSize, DXGI_OUTDUPL_MOVE_RECT* pMoveRectBuffer, UINT* pMoveRectsBufferSizeRequired);
    HRESULT GetFramePointerShape(UINT PointerShapeBufferSize, void* pPointerShapeBuffer, UINT* pPointerShapeBufferSizeRequired, DXGI_OUTDUPL_POINTER_SHAPE_INFO* pPointerShapeInfo);
    HRESULT MapDesktopSurface(DXGI_MAPPED_RECT* pLockedRect);
    HRESULT UnMapDesktopSurface();
    HRESULT ReleaseFrame();
}
struct DXGI_OUTDUPL_DESC
{
    DXGI_MODE_DESC ModeDesc;
    DXGI_MODE_ROTATION Rotation;
    BOOL DesktopImageInSystemMemory;
}
struct DXGI_OUTDUPL_FRAME_INFO
{
    LARGE_INTEGER LastPresentTime;
    LARGE_INTEGER LastMouseUpdateTime;
    UINT AccumulatedFrames;
    BOOL RectsCoalesced;
    BOOL ProtectedContentMaskedOut;
    DXGI_OUTDUPL_POINTER_POSITION PointerPosition;
    UINT TotalMetadataBufferSize;
    UINT PointerShapeBufferSize;
}
struct DXGI_OUTDUPL_POINTER_POSITION
{
    POINT Position;
    BOOL Visible;
}
struct DXGI_OUTDUPL_MOVE_RECT
{
    POINT SourcePoint;
    RECT DestinationRect;
}
struct DXGI_OUTDUPL_POINTER_SHAPE_INFO
{
    UINT Type;
    UINT Width;
    UINT Height;
    UINT Pitch;
    POINT HotSpot;
}
interface IDXGISurface2: IDXGISurface1
{
    static const iidof = parseGUID("aba496dd-b617-4cb8-a866-bc44d7eb1fa2");
    HRESULT GetResource(ref IID riid, void** ppParentResource, UINT* pSubresourceIndex);
}
interface IDXGIResource1: IDXGIResource
{
    static const iidof = parseGUID("30961379-4609-4a41-998e-54fe567ee0c1");
    HRESULT CreateSubresourceSurface(UINT index, IDXGISurface2* ppSurface);
    HRESULT CreateSharedHandle(const(SECURITY_ATTRIBUTES)* pAttributes, DWORD dwAccess, LPCWSTR lpName, HANDLE* pHandle);
}
interface IDXGIDevice2: IDXGIDevice1
{
    static const iidof = parseGUID("05008617-fbfd-4051-a790-144884b4f6a9");
    HRESULT OfferResources(UINT NumResources, const(IDXGIResource)* ppResources, DXGI_OFFER_RESOURCE_PRIORITY Priority);
    HRESULT ReclaimResources(UINT NumResources, const(IDXGIResource)* ppResources, BOOL* pDiscarded);
    HRESULT EnqueueSetEvent(HANDLE hEvent);
}
alias DXGI_OFFER_RESOURCE_PRIORITY = _DXGI_OFFER_RESOURCE_PRIORITY;
enum _DXGI_OFFER_RESOURCE_PRIORITY
{
    _LOW = 0x1,
    _NORMAL = 0x2,
    _HIGH = 0x3,
}
interface IDXGISwapChain1: IDXGISwapChain
{
    static const iidof = parseGUID("790a45f7-0d42-4876-983a-0a55cfe6f4aa");
    HRESULT GetDesc1(DXGI_SWAP_CHAIN_DESC1* pDesc);
    HRESULT GetFullscreenDesc(DXGI_SWAP_CHAIN_FULLSCREEN_DESC* pDesc);
    HRESULT GetHwnd(HWND* pHwnd);
    HRESULT GetCoreWindow(ref IID refiid, void** ppUnk);
    HRESULT Present1(UINT SyncInterval, UINT PresentFlags, const(DXGI_PRESENT_PARAMETERS)* pPresentParameters);
    BOOL IsTemporaryMonoSupported();
    HRESULT GetRestrictToOutput(IDXGIOutput* ppRestrictToOutput);
    HRESULT SetBackgroundColor(const(DXGI_RGBA)* pColor);
    HRESULT GetBackgroundColor(DXGI_RGBA* pColor);
    HRESULT SetRotation(DXGI_MODE_ROTATION Rotation);
    HRESULT GetRotation(DXGI_MODE_ROTATION* pRotation);
}
struct DXGI_SWAP_CHAIN_DESC1
{
    UINT Width;
    UINT Height;
    DXGI_FORMAT Format;
    BOOL Stereo;
    DXGI_SAMPLE_DESC SampleDesc;
    DXGI_USAGE BufferUsage;
    UINT BufferCount;
    DXGI_SCALING Scaling;
    DXGI_SWAP_EFFECT SwapEffect;
    DXGI_ALPHA_MODE AlphaMode;
    UINT Flags;
}
enum DXGI_SCALING
{
    _STRETCH = 0x0,
    _NONE = 0x1,
    _ASPECT_RATIO_STRETCH = 0x2,
}
enum DXGI_ALPHA_MODE
{
    _UNSPECIFIED = 0x0,
    _PREMULTIPLIED = 0x1,
    _STRAIGHT = 0x2,
    _IGNORE = 0x3,
    _FORCE_DWORD = 0xffffffff,
}
struct DXGI_SWAP_CHAIN_FULLSCREEN_DESC
{
    DXGI_RATIONAL RefreshRate;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
    BOOL Windowed;
}
struct DXGI_PRESENT_PARAMETERS
{
    UINT DirtyRectsCount;
    RECT* pDirtyRects;
    RECT* pScrollRect;
    POINT* pScrollOffset;
}
interface IDXGIFactory2: IDXGIFactory1
{
    static const iidof = parseGUID("50c83a1c-e072-4c48-87b0-3630fa36a6d0");
    BOOL IsWindowedStereoEnabled();
    HRESULT CreateSwapChainForHwnd(IUnknown pDevice, HWND hWnd, const(DXGI_SWAP_CHAIN_DESC1)* pDesc, const(DXGI_SWAP_CHAIN_FULLSCREEN_DESC)* pFullscreenDesc, IDXGIOutput pRestrictToOutput, IDXGISwapChain1* ppSwapChain);
    HRESULT CreateSwapChainForCoreWindow(IUnknown pDevice, IUnknown pWindow, const(DXGI_SWAP_CHAIN_DESC1)* pDesc, IDXGIOutput pRestrictToOutput, IDXGISwapChain1* ppSwapChain);
    HRESULT GetSharedResourceAdapterLuid(HANDLE hResource, LUID* pLuid);
    HRESULT RegisterStereoStatusWindow(HWND WindowHandle, UINT wMsg, DWORD* pdwCookie);
    HRESULT RegisterStereoStatusEvent(HANDLE hEvent, DWORD* pdwCookie);
    void UnregisterStereoStatus(DWORD dwCookie);
    HRESULT RegisterOcclusionStatusWindow(HWND WindowHandle, UINT wMsg, DWORD* pdwCookie);
    HRESULT RegisterOcclusionStatusEvent(HANDLE hEvent, DWORD* pdwCookie);
    void UnregisterOcclusionStatus(DWORD dwCookie);
    HRESULT CreateSwapChainForComposition(IUnknown pDevice, const(DXGI_SWAP_CHAIN_DESC1)* pDesc, IDXGIOutput pRestrictToOutput, IDXGISwapChain1* ppSwapChain);
}
interface IDXGIAdapter2: IDXGIAdapter1
{
    static const iidof = parseGUID("0aa1ae0a-fa0e-4b84-8644-e05ff8e5acb5");
    HRESULT GetDesc2(DXGI_ADAPTER_DESC2* pDesc);
}
struct DXGI_ADAPTER_DESC2
{
    WCHAR[128] Description;
    UINT VendorId;
    UINT DeviceId;
    UINT SubSysId;
    UINT Revision;
    SIZE_T DedicatedVideoMemory;
    SIZE_T DedicatedSystemMemory;
    SIZE_T SharedSystemMemory;
    LUID AdapterLuid;
    UINT Flags;
    DXGI_GRAPHICS_PREEMPTION_GRANULARITY GraphicsPreemptionGranularity;
    DXGI_COMPUTE_PREEMPTION_GRANULARITY ComputePreemptionGranularity;
}
enum DXGI_GRAPHICS_PREEMPTION_GRANULARITY
{
    _DMA_BUFFER_BOUNDARY = 0x0,
    _PRIMITIVE_BOUNDARY = 0x1,
    _TRIANGLE_BOUNDARY = 0x2,
    _PIXEL_BOUNDARY = 0x3,
    _INSTRUCTION_BOUNDARY = 0x4,
}
enum DXGI_COMPUTE_PREEMPTION_GRANULARITY
{
    _DMA_BUFFER_BOUNDARY = 0x0,
    _DISPATCH_BOUNDARY = 0x1,
    _THREAD_GROUP_BOUNDARY = 0x2,
    _THREAD_BOUNDARY = 0x3,
    _INSTRUCTION_BOUNDARY = 0x4,
}
interface IDXGIOutput1: IDXGIOutput
{
    static const iidof = parseGUID("00cddea8-939b-4b83-a340-a685226666cc");
    HRESULT GetDisplayModeList1(DXGI_FORMAT EnumFormat, UINT Flags, UINT* pNumModes, DXGI_MODE_DESC1* pDesc);
    HRESULT FindClosestMatchingMode1(const(DXGI_MODE_DESC1)* pModeToMatch, DXGI_MODE_DESC1* pClosestMatch, IUnknown pConcernedDevice);
    HRESULT GetDisplaySurfaceData1(IDXGIResource pDestination);
    HRESULT DuplicateOutput(IUnknown pDevice, IDXGIOutputDuplication* ppOutputDuplication);
}
struct DXGI_MODE_DESC1
{
    UINT Width;
    UINT Height;
    DXGI_RATIONAL RefreshRate;
    DXGI_FORMAT Format;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
    BOOL Stereo;
}
enum DXGI_OUTDUPL_POINTER_SHAPE_TYPE
{
    _MONOCHROME = 0x1,
    _COLOR = 0x2,
    _MASKED_COLOR = 0x4,
}
