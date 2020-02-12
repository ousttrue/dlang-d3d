// This source code was generated by regenerator
module windowskits.dxgi1_4;
import windowskits.dxgi1_3;
import windowskits.minwindef;
import core.sys.windows.windef;
import core.sys.windows.winnt;
import windowskits.winnt;
import core.sys.windows.basetsd;
import windowskits.dxgicommon;
import windowskits.dxgiformat;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.dxgi1_2;
interface IDXGISwapChain3: IDXGISwapChain2
{
    static const iidof = parseGUID("94d99bdb-f1f8-4ab0-b236-7da0170edab1");
    UINT GetCurrentBackBufferIndex();
    HRESULT CheckColorSpaceSupport(DXGI_COLOR_SPACE_TYPE ColorSpace, UINT* pColorSpaceSupport);
    HRESULT SetColorSpace1(DXGI_COLOR_SPACE_TYPE ColorSpace);
    HRESULT ResizeBuffers1(UINT BufferCount, UINT Width, UINT Height, DXGI_FORMAT Format, UINT SwapChainFlags, const(UINT)* pCreationNodeMask, const(IUnknown)* ppPresentQueue);
}
interface IDXGIOutput4: IDXGIOutput3
{
    static const iidof = parseGUID("dc7dca35-2196-414d-9f53-617884032a60");
    HRESULT CheckOverlayColorSpaceSupport(DXGI_FORMAT Format, DXGI_COLOR_SPACE_TYPE ColorSpace, IUnknown pConcernedDevice, UINT* pFlags);
}
interface IDXGIFactory4: IDXGIFactory3
{
    static const iidof = parseGUID("1bc6ea02-ef36-464f-bf0c-21ca39e5168a");
    HRESULT EnumAdapterByLuid(LUID AdapterLuid, ref IID riid, void** ppvAdapter);
    HRESULT EnumWarpAdapter(ref IID riid, void** ppvAdapter);
}
interface IDXGIAdapter3: IDXGIAdapter2
{
    static const iidof = parseGUID("645967a4-1392-4310-a798-8053ce3e93fd");
    HRESULT RegisterHardwareContentProtectionTeardownStatusEvent(HANDLE hEvent, DWORD* pdwCookie);
    void UnregisterHardwareContentProtectionTeardownStatus(DWORD dwCookie);
    HRESULT QueryVideoMemoryInfo(UINT NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, DXGI_QUERY_VIDEO_MEMORY_INFO* pVideoMemoryInfo);
    HRESULT SetVideoMemoryReservation(UINT NodeIndex, DXGI_MEMORY_SEGMENT_GROUP MemorySegmentGroup, UINT64 Reservation);
    HRESULT RegisterVideoMemoryBudgetChangeNotificationEvent(HANDLE hEvent, DWORD* pdwCookie);
    void UnregisterVideoMemoryBudgetChangeNotification(DWORD dwCookie);
}
enum DXGI_MEMORY_SEGMENT_GROUP
{
    _LOCAL = 0x0,
    _NON_LOCAL = 0x1,
}
struct DXGI_QUERY_VIDEO_MEMORY_INFO
{
    UINT64 Budget;
    UINT64 CurrentUsage;
    UINT64 AvailableForReservation;
    UINT64 CurrentReservation;
}
enum DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG
{
    _PRESENT = 0x1,
    _OVERLAY_PRESENT = 0x2,
}
enum DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG
{
    _PRESENT = 0x1,
}