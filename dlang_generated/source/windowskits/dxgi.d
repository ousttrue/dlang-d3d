// This source code was generated by regenerator
module windowskits.dxgi;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.winnt;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import windowskits.minwindef;
import windowskits.dxgiformat;
import windowskits.dxgicommon;
import windowskits.windef;
import windowskits.dxgitype;
enum __REQUIRED_RPCNDR_H_VERSION__ = 500;
enum __REQUIRED_RPCSAL_H_VERSION__ = 100;
enum DXGI_CPU_ACCESS_NONE = ( 0 );
enum DXGI_CPU_ACCESS_DYNAMIC = ( 1 );
enum DXGI_CPU_ACCESS_READ_WRITE = ( 2 );
enum DXGI_CPU_ACCESS_SCRATCH = ( 3 );
enum DXGI_CPU_ACCESS_FIELD = 15;
enum DXGI_USAGE_SHADER_INPUT = 0x00000010UL;
enum DXGI_USAGE_RENDER_TARGET_OUTPUT = 0x00000020UL;
enum DXGI_USAGE_BACK_BUFFER = 0x00000040UL;
enum DXGI_USAGE_SHARED = 0x00000080UL;
enum DXGI_USAGE_READ_ONLY = 0x00000100UL;
enum DXGI_USAGE_DISCARD_ON_PRESENT = 0x00000200UL;
enum DXGI_USAGE_UNORDERED_ACCESS = 0x00000400UL;
enum DXGI_RESOURCE_PRIORITY_MINIMUM = ( 0x28000000 );
enum DXGI_RESOURCE_PRIORITY_LOW = ( 0x50000000 );
enum DXGI_RESOURCE_PRIORITY_NORMAL = ( 0x78000000 );
enum DXGI_RESOURCE_PRIORITY_HIGH = ( 0xa0000000 );
enum DXGI_RESOURCE_PRIORITY_MAXIMUM = ( 0xc8000000 );
enum DXGI_MAP_READ = ( 1UL );
enum DXGI_MAP_WRITE = ( 2UL );
enum DXGI_MAP_DISCARD = ( 4UL );
enum DXGI_ENUM_MODES_INTERLACED = ( 1UL );
enum DXGI_ENUM_MODES_SCALING = ( 2UL );
enum DXGI_MAX_SWAP_CHAIN_BUFFERS = ( 16 );
enum DXGI_PRESENT_TEST = 0x00000001UL;
enum DXGI_PRESENT_DO_NOT_SEQUENCE = 0x00000002UL;
enum DXGI_PRESENT_RESTART = 0x00000004UL;
enum DXGI_PRESENT_DO_NOT_WAIT = 0x00000008UL;
enum DXGI_PRESENT_STEREO_PREFER_RIGHT = 0x00000010UL;
enum DXGI_PRESENT_STEREO_TEMPORARY_MONO = 0x00000020UL;
enum DXGI_PRESENT_RESTRICT_TO_OUTPUT = 0x00000040UL;
enum DXGI_PRESENT_USE_DURATION = 0x00000100UL;
enum DXGI_PRESENT_ALLOW_TEARING = 0x00000200UL;
enum DXGI_MWA_NO_WINDOW_CHANGES = ( 1 << 0 );
enum DXGI_MWA_NO_ALT_ENTER = ( 1 << 1 );
enum DXGI_MWA_NO_PRINT_SCREEN = ( 1 << 2 );
enum DXGI_MWA_VALID = ( 0x7 );
interface IDXGIObject: IUnknown
{
    static const iidof = parseGUID("aec22fb8-76f3-4639-9be0-28eb43a67a2e");
    HRESULT SetPrivateData(ref GUID Name, UINT DataSize, const(void)* pData);
    HRESULT SetPrivateDataInterface(ref GUID Name, const(IUnknown) pUnknown);
    HRESULT GetPrivateData(ref GUID Name, UINT* pDataSize, void* pData);
    HRESULT GetParent(ref IID riid, void** ppParent);
}
interface IDXGIDeviceSubObject: IDXGIObject
{
    static const iidof = parseGUID("3d3e0379-f9de-4d58-bb6c-18d62992f1a6");
    HRESULT GetDevice(ref IID riid, void** ppDevice);
}
interface IDXGIResource: IDXGIDeviceSubObject
{
    static const iidof = parseGUID("035f3ab4-482e-4e50-b41f-8a7f8bd8960b");
    HRESULT GetSharedHandle(HANDLE* pSharedHandle);
    HRESULT GetUsage(DXGI_USAGE* pUsage);
    HRESULT SetEvictionPriority(UINT EvictionPriority);
    HRESULT GetEvictionPriority(UINT* pEvictionPriority);
}
alias DXGI_USAGE = UINT;
interface IDXGIKeyedMutex: IDXGIDeviceSubObject
{
    static const iidof = parseGUID("9d8e1289-d7b3-465f-8126-250e349af85d");
    HRESULT AcquireSync(UINT64 Key, DWORD dwMilliseconds);
    HRESULT ReleaseSync(UINT64 Key);
}
interface IDXGISurface: IDXGIDeviceSubObject
{
    static const iidof = parseGUID("cafcb56c-6ac3-4889-bf47-9e23bbd260ec");
    HRESULT GetDesc(DXGI_SURFACE_DESC* pDesc);
    HRESULT Map(DXGI_MAPPED_RECT* pLockedRect, UINT MapFlags);
    HRESULT Unmap();
}
struct DXGI_SURFACE_DESC
{
    UINT Width;
    UINT Height;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
}
struct DXGI_MAPPED_RECT
{
    INT Pitch;
    BYTE* pBits;
}
interface IDXGISurface1: IDXGISurface
{
    static const iidof = parseGUID("4ae63092-6327-4c1b-80ae-bfe12ea32b86");
    HRESULT GetDC(BOOL Discard, HDC* phdc);
    HRESULT ReleaseDC(RECT* pDirtyRect);
}
interface IDXGIAdapter: IDXGIObject
{
    static const iidof = parseGUID("2411e7e1-12ac-4ccf-bd14-9798e8534dc0");
    HRESULT EnumOutputs(UINT Output, IDXGIOutput* ppOutput);
    HRESULT GetDesc(DXGI_ADAPTER_DESC* pDesc);
    HRESULT CheckInterfaceSupport(ref GUID InterfaceName, LARGE_INTEGER* pUMDVersion);
}
interface IDXGIOutput: IDXGIObject
{
    static const iidof = parseGUID("ae02eedb-c735-4690-8d52-5a8dc20213aa");
    HRESULT GetDesc(DXGI_OUTPUT_DESC* pDesc);
    HRESULT GetDisplayModeList(DXGI_FORMAT EnumFormat, UINT Flags, UINT* pNumModes, DXGI_MODE_DESC* pDesc);
    HRESULT FindClosestMatchingMode(const(DXGI_MODE_DESC)* pModeToMatch, DXGI_MODE_DESC* pClosestMatch, IUnknown pConcernedDevice);
    HRESULT WaitForVBlank();
    HRESULT TakeOwnership(IUnknown pDevice, BOOL Exclusive);
    void ReleaseOwnership();
    HRESULT GetGammaControlCapabilities(DXGI_GAMMA_CONTROL_CAPABILITIES* pGammaCaps);
    HRESULT SetGammaControl(const(DXGI_GAMMA_CONTROL)* pArray);
    HRESULT GetGammaControl(DXGI_GAMMA_CONTROL* pArray);
    HRESULT SetDisplaySurface(IDXGISurface pScanoutSurface);
    HRESULT GetDisplaySurfaceData(IDXGISurface pDestination);
    HRESULT GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
}
struct DXGI_OUTPUT_DESC
{
    WCHAR[32] DeviceName;
    RECT DesktopCoordinates;
    BOOL AttachedToDesktop;
    DXGI_MODE_ROTATION Rotation;
    HMONITOR Monitor;
}
struct DXGI_FRAME_STATISTICS
{
    UINT PresentCount;
    UINT PresentRefreshCount;
    UINT SyncRefreshCount;
    LARGE_INTEGER SyncQPCTime;
    LARGE_INTEGER SyncGPUTime;
}
struct DXGI_ADAPTER_DESC
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
}
interface IDXGISwapChain: IDXGIDeviceSubObject
{
    static const iidof = parseGUID("310d36a0-d2e7-4c0a-aa04-6a9d23b8886a");
    HRESULT Present(UINT SyncInterval, UINT Flags);
    HRESULT GetBuffer(UINT Buffer, ref IID riid, void** ppSurface);
    HRESULT SetFullscreenState(BOOL Fullscreen, IDXGIOutput pTarget);
    HRESULT GetFullscreenState(BOOL* pFullscreen, IDXGIOutput* ppTarget);
    HRESULT GetDesc(DXGI_SWAP_CHAIN_DESC* pDesc);
    HRESULT ResizeBuffers(UINT BufferCount, UINT Width, UINT Height, DXGI_FORMAT NewFormat, UINT SwapChainFlags);
    HRESULT ResizeTarget(const(DXGI_MODE_DESC)* pNewTargetParameters);
    HRESULT GetContainingOutput(IDXGIOutput* ppOutput);
    HRESULT GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
    HRESULT GetLastPresentCount(UINT* pLastPresentCount);
}
struct DXGI_SWAP_CHAIN_DESC
{
    DXGI_MODE_DESC BufferDesc;
    DXGI_SAMPLE_DESC SampleDesc;
    DXGI_USAGE BufferUsage;
    UINT BufferCount;
    HWND OutputWindow;
    BOOL Windowed;
    DXGI_SWAP_EFFECT SwapEffect;
    UINT Flags;
}
enum DXGI_SWAP_EFFECT
{
    _DISCARD = 0x0,
    _SEQUENTIAL = 0x1,
    _FLIP_SEQUENTIAL = 0x3,
    _FLIP_DISCARD = 0x4,
}
interface IDXGIFactory: IDXGIObject
{
    static const iidof = parseGUID("7b7166ec-21c7-44ae-b21a-c9ae321ae369");
    HRESULT EnumAdapters(UINT Adapter, IDXGIAdapter* ppAdapter);
    HRESULT MakeWindowAssociation(HWND WindowHandle, UINT Flags);
    HRESULT GetWindowAssociation(HWND* pWindowHandle);
    HRESULT CreateSwapChain(IUnknown pDevice, DXGI_SWAP_CHAIN_DESC* pDesc, IDXGISwapChain* ppSwapChain);
    HRESULT CreateSoftwareAdapter(HMODULE Module, IDXGIAdapter* ppAdapter);
}
interface IDXGIDevice: IDXGIObject
{
    static const iidof = parseGUID("54ec77fa-1377-44e6-8c32-88fd5f44c84c");
    HRESULT GetAdapter(IDXGIAdapter* pAdapter);
    HRESULT CreateSurface(const(DXGI_SURFACE_DESC)* pDesc, UINT NumSurfaces, DXGI_USAGE Usage, const(DXGI_SHARED_RESOURCE)* pSharedResource, IDXGISurface* ppSurface);
    HRESULT QueryResourceResidency(const(IUnknown)* ppResources, DXGI_RESIDENCY* pResidencyStatus, UINT NumResources);
    HRESULT SetGPUThreadPriority(INT Priority);
    HRESULT GetGPUThreadPriority(INT* pPriority);
}
struct DXGI_SHARED_RESOURCE
{
    HANDLE Handle;
}
enum DXGI_RESIDENCY
{
    _FULLY_RESIDENT = 0x1,
    _RESIDENT_IN_SHARED_MEMORY = 0x2,
    _EVICTED_TO_DISK = 0x3,
}
interface IDXGIFactory1: IDXGIFactory
{
    static const iidof = parseGUID("770aae78-f26f-4dba-a829-253c83d1b387");
    HRESULT EnumAdapters1(UINT Adapter, IDXGIAdapter1* ppAdapter);
    BOOL IsCurrent();
}
interface IDXGIAdapter1: IDXGIAdapter
{
    static const iidof = parseGUID("29038f61-3839-4626-91fd-086879011a05");
    HRESULT GetDesc1(DXGI_ADAPTER_DESC1* pDesc);
}
struct DXGI_ADAPTER_DESC1
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
}
interface IDXGIDevice1: IDXGIDevice
{
    static const iidof = parseGUID("77db970f-6276-48ba-ba28-070143b4392c");
    HRESULT SetMaximumFrameLatency(UINT MaxLatency);
    HRESULT GetMaximumFrameLatency(UINT* pMaxLatency);
}
enum DXGI_SWAP_CHAIN_FLAG
{
    _NONPREROTATED = 0x1,
    _ALLOW_MODE_SWITCH = 0x2,
    _GDI_COMPATIBLE = 0x4,
    _RESTRICTED_CONTENT = 0x8,
    _RESTRICT_SHARED_RESOURCE_DRIVER = 0x10,
    _DISPLAY_ONLY = 0x20,
    _FRAME_LATENCY_WAITABLE_OBJECT = 0x40,
    _FOREGROUND_LAYER = 0x80,
    _FULLSCREEN_VIDEO = 0x100,
    _YUV_VIDEO = 0x200,
    _HW_PROTECTED = 0x400,
    _ALLOW_TEARING = 0x800,
    _RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 0x1000,
}
enum DXGI_ADAPTER_FLAG
{
    _NONE = 0x0,
    _REMOTE = 0x1,
    _SOFTWARE = 0x2,
    _FORCE_DWORD = 0xffffffff,
}
struct DXGI_DISPLAY_COLOR_SPACE
{
    FLOAT[2][8] PrimaryCoordinates;
    FLOAT[2][16] WhitePoints;
}
extern(C) HRESULT CreateDXGIFactory(ref IID riid, void** ppFactory);
extern(C) HRESULT CreateDXGIFactory1(ref IID riid, void** ppFactory);
