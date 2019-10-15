// cpptypeinfo generated
module windowskits.dxgi;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;
import windowskits.unknwnbase;
import windowskits.windef;
import windowskits.ntdef;
import windowskits.dxgiformat;
import windowskits.dxgitype;
import windowskits.dcommon;
import windowskits.minwindef;
import windowskits.dxgicommon;

const DXGI_CPU_ACCESS_NONE = ( 0 );
const DXGI_CPU_ACCESS_DYNAMIC = ( 1 );
const DXGI_CPU_ACCESS_READ_WRITE = ( 2 );
const DXGI_CPU_ACCESS_SCRATCH = ( 3 );
const DXGI_CPU_ACCESS_FIELD = 15;
const DXGI_USAGE_SHADER_INPUT = 0x00000010UL;
const DXGI_USAGE_RENDER_TARGET_OUTPUT = 0x00000020UL;
const DXGI_USAGE_BACK_BUFFER = 0x00000040UL;
const DXGI_USAGE_SHARED = 0x00000080UL;
const DXGI_USAGE_READ_ONLY = 0x00000100UL;
const DXGI_USAGE_DISCARD_ON_PRESENT = 0x00000200UL;
const DXGI_USAGE_UNORDERED_ACCESS = 0x00000400UL;
const DXGI_RESOURCE_PRIORITY_MINIMUM = ( 0x28000000 );
const DXGI_RESOURCE_PRIORITY_LOW = ( 0x50000000 );
const DXGI_RESOURCE_PRIORITY_NORMAL = ( 0x78000000 );
const DXGI_RESOURCE_PRIORITY_HIGH = ( 0xa0000000 );
const DXGI_RESOURCE_PRIORITY_MAXIMUM = ( 0xc8000000 );
const DXGI_MAP_READ = ( 1UL );
const DXGI_MAP_WRITE = ( 2UL );
const DXGI_MAP_DISCARD = ( 4UL );
const DXGI_ENUM_MODES_INTERLACED = ( 1UL );
const DXGI_ENUM_MODES_SCALING = ( 2UL );
const DXGI_MAX_SWAP_CHAIN_BUFFERS = ( 16 );
const DXGI_PRESENT_TEST = 0x00000001UL;
const DXGI_PRESENT_DO_NOT_SEQUENCE = 0x00000002UL;
const DXGI_PRESENT_RESTART = 0x00000004UL;
const DXGI_PRESENT_DO_NOT_WAIT = 0x00000008UL;
const DXGI_PRESENT_STEREO_PREFER_RIGHT = 0x00000010UL;
const DXGI_PRESENT_STEREO_TEMPORARY_MONO = 0x00000020UL;
const DXGI_PRESENT_RESTRICT_TO_OUTPUT = 0x00000040UL;
const DXGI_PRESENT_USE_DURATION = 0x00000100UL;
const DXGI_PRESENT_ALLOW_TEARING = 0x00000200UL;
const DXGI_MWA_NO_WINDOW_CHANGES = ( 1 << 0 );
const DXGI_MWA_NO_ALT_ENTER = ( 1 << 1 );
const DXGI_MWA_NO_PRINT_SCREEN = ( 1 << 2 );
const DXGI_MWA_VALID = ( 0x7 );

enum DXGI_RESIDENCY {
    FULLY_RESIDENT = 0x00000001,
    RESIDENT_IN_SHARED_MEMORY = 0x00000002,
    EVICTED_TO_DISK = 0x00000003,
}

enum DXGI_SWAP_EFFECT {
    DISCARD = 0x00000000,
    SEQUENTIAL = 0x00000001,
    FLIP_SEQUENTIAL = 0x00000003,
    FLIP_DISCARD = 0x00000004,
}

enum DXGI_SWAP_CHAIN_FLAG {
    NONPREROTATED = 0x00000001,
    ALLOW_MODE_SWITCH = 0x00000002,
    GDI_COMPATIBLE = 0x00000004,
    RESTRICTED_CONTENT = 0x00000008,
    RESTRICT_SHARED_RESOURCE_DRIVER = 0x00000010,
    DISPLAY_ONLY = 0x00000020,
    FRAME_LATENCY_WAITABLE_OBJECT = 0x00000040,
    FOREGROUND_LAYER = 0x00000080,
    FULLSCREEN_VIDEO = 0x00000100,
    YUV_VIDEO = 0x00000200,
    HW_PROTECTED = 0x00000400,
    ALLOW_TEARING = 0x00000800,
    RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS = 0x00001000,
}

enum DXGI_ADAPTER_FLAG {
    NONE = 0x00000000,
    REMOTE = 0x00000001,
    SOFTWARE = 0x00000002,
    FORCE_DWORD = -0x0000001,
}

struct DXGI_SURFACE_DESC{
    uint Width;
    uint Height;
    DXGI_FORMAT Format;
    DXGI_SAMPLE_DESC SampleDesc;
}

struct DXGI_MAPPED_RECT{
    int Pitch;
    ubyte* pBits;
}

struct DXGI_ADAPTER_DESC{
    ushort* Description;
    uint VendorId;
    uint DeviceId;
    uint SubSysId;
    uint Revision;
    ulong DedicatedVideoMemory;
    ulong DedicatedSystemMemory;
    ulong SharedSystemMemory;
    _LUID AdapterLuid;
}

struct DXGI_OUTPUT_DESC{
    ushort* DeviceName;
    tagRECT DesktopCoordinates;
    int AttachedToDesktop;
    DXGI_MODE_ROTATION Rotation;
    HMONITOR__* Monitor;
}

struct DXGI_FRAME_STATISTICS{
    uint PresentCount;
    uint PresentRefreshCount;
    uint SyncRefreshCount;
    _LARGE_INTEGER SyncQPCTime;
    _LARGE_INTEGER SyncGPUTime;
}

struct DXGI_SWAP_CHAIN_DESC{
    DXGI_MODE_DESC BufferDesc;
    DXGI_SAMPLE_DESC SampleDesc;
    uint BufferUsage;
    uint BufferCount;
    HWND OutputWindow;
    int Windowed;
    DXGI_SWAP_EFFECT SwapEffect;
    uint Flags;
}

struct DXGI_SHARED_RESOURCE{
    void* Handle;
}

struct DXGI_ADAPTER_DESC1{
    ushort* Description;
    uint VendorId;
    uint DeviceId;
    uint SubSysId;
    uint Revision;
    ulong DedicatedVideoMemory;
    ulong DedicatedSystemMemory;
    ulong SharedSystemMemory;
    _LUID AdapterLuid;
    uint Flags;
}

// dxgi.h: 314
interface IDXGIObject: IUnknown {
    static immutable iidof = GUID(0xaec22fb8, 0x76f3, 0x4639, [0x9b, 0xe0, 0x28, 0xeb, 0x43, 0xa6, 0x7a, 0x2e]);
    extern(C) int SetPrivateData(_GUID* Name, uint DataSize, void* pData);
    extern(C) int SetPrivateDataInterface(_GUID* Name, IUnknown pUnknown);
    extern(C) int GetPrivateData(_GUID* Name, uint* pDataSize, void* pData);
    extern(C) int GetParent(_GUID* riid, void** ppParent);
}

// dxgi.h: 454
interface IDXGIDeviceSubObject: IDXGIObject {
    static immutable iidof = GUID(0x3d3e0379, 0xf9de, 0x4d58, [0xbb, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6]);
    extern(C) int GetDevice(_GUID* riid, void** ppDevice);
}

// dxgi.h: 584
interface IDXGIResource: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x035f3ab4, 0x482e, 0x4e50, [0xb4, 0x1f, 0x8a, 0x7f, 0x8b, 0xd8, 0x96, 0x0b]);
    extern(C) int GetSharedHandle(void** pSharedHandle);
    extern(C) int GetUsage(uint* pUsage);
    extern(C) int SetEvictionPriority(uint EvictionPriority);
    extern(C) int GetEvictionPriority(uint* pEvictionPriority);
}

// dxgi.h: 753
interface IDXGIKeyedMutex: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x9d8e1289, 0xd7b3, 0x465f, [0x81, 0x26, 0x25, 0x0e, 0x34, 0x9a, 0xf8, 0x5d]);
    extern(C) int AcquireSync(ulong Key, uint dwMilliseconds);
    extern(C) int ReleaseSync(ulong Key);
}

// dxgi.h: 1073
interface IDXGISurface1: IDXGISurface {
    static immutable iidof = GUID(0x4ae63092, 0x6327, 0x4c1b, [0x80, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86]);
    extern(C) int GetDC(int Discard, HDC** phdc);
    extern(C) int ReleaseDC(tagRECT* pDirtyRect);
}

// dxgi.h: 1257
interface IDXGIAdapter: IDXGIObject {
    static immutable iidof = GUID(0x2411e7e1, 0x12ac, 0x4ccf, [0xbd, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0]);
    extern(C) int EnumOutputs(uint Output, IDXGIOutput* ppOutput);
    extern(C) int GetDesc(DXGI_ADAPTER_DESC* pDesc);
    extern(C) int CheckInterfaceSupport(_GUID* InterfaceName, _LARGE_INTEGER* pUMDVersion);
}

// dxgi.h: 1425
interface IDXGIOutput: IDXGIObject {
    static immutable iidof = GUID(0xae02eedb, 0xc735, 0x4690, [0x8d, 0x52, 0x5a, 0x8d, 0xc2, 0x02, 0x13, 0xaa]);
    extern(C) int GetDesc(DXGI_OUTPUT_DESC* pDesc);
    extern(C) int GetDisplayModeList(DXGI_FORMAT EnumFormat, uint Flags, uint* pNumModes, DXGI_MODE_DESC* pDesc);
    extern(C) int FindClosestMatchingMode(DXGI_MODE_DESC* pModeToMatch, DXGI_MODE_DESC* pClosestMatch, IUnknown pConcernedDevice);
    extern(C) int WaitForVBlank();
    extern(C) int TakeOwnership(IUnknown pDevice, int Exclusive);
    extern(C) void ReleaseOwnership();
    extern(C) int GetGammaControlCapabilities(DXGI_GAMMA_CONTROL_CAPABILITIES* pGammaCaps);
    extern(C) int SetGammaControl(DXGI_GAMMA_CONTROL* pArray);
    extern(C) int GetGammaControl(DXGI_GAMMA_CONTROL* pArray);
    extern(C) int SetDisplaySurface(IDXGISurface pScanoutSurface);
    extern(C) int GetDisplaySurfaceData(IDXGISurface pDestination);
    extern(C) int GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
}

// dxgi.h: 1711
interface IDXGISwapChain: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x310d36a0, 0xd2e7, 0x4c0a, [0xaa, 0x04, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a]);
    extern(C) int Present(uint SyncInterval, uint Flags);
    extern(C) int GetBuffer(uint Buffer, _GUID* riid, void** ppSurface);
    extern(C) int SetFullscreenState(int Fullscreen, IDXGIOutput pTarget);
    extern(C) int GetFullscreenState(int* pFullscreen, IDXGIOutput* ppTarget);
    extern(C) int GetDesc(DXGI_SWAP_CHAIN_DESC* pDesc);
    extern(C) int ResizeBuffers(uint BufferCount, uint Width, uint Height, DXGI_FORMAT NewFormat, uint SwapChainFlags);
    extern(C) int ResizeTarget(DXGI_MODE_DESC* pNewTargetParameters);
    extern(C) int GetContainingOutput(IDXGIOutput* ppOutput);
    extern(C) int GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
    extern(C) int GetLastPresentCount(uint* pLastPresentCount);
}

// dxgi.h: 1986
interface IDXGIFactory: IDXGIObject {
    static immutable iidof = GUID(0x7b7166ec, 0x21c7, 0x44ae, [0xb2, 0x1a, 0xc9, 0xae, 0x32, 0x1a, 0xe3, 0x69]);
    extern(C) int EnumAdapters(uint Adapter, IDXGIAdapter* ppAdapter);
    extern(C) int MakeWindowAssociation(HWND WindowHandle, uint Flags);
    extern(C) int GetWindowAssociation(HWND* pWindowHandle);
    extern(C) int CreateSwapChain(IUnknown pDevice, DXGI_SWAP_CHAIN_DESC* pDesc, IDXGISwapChain* ppSwapChain);
    extern(C) int CreateSoftwareAdapter(HINSTANCE* Module, IDXGIAdapter* ppAdapter);
}

// dxgi.h: 2186
interface IDXGIDevice: IDXGIObject {
    static immutable iidof = GUID(0x54ec77fa, 0x1377, 0x44e6, [0x8c, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c]);
    extern(C) int GetAdapter(IDXGIAdapter* pAdapter);
    extern(C) int CreateSurface(DXGI_SURFACE_DESC* pDesc, uint NumSurfaces, uint Usage, DXGI_SHARED_RESOURCE* pSharedResource, IDXGISurface* ppSurface);
    extern(C) int QueryResourceResidency(IUnknown* ppResources, DXGI_RESIDENCY* pResidencyStatus, uint NumResources);
    extern(C) int SetGPUThreadPriority(int Priority);
    extern(C) int GetGPUThreadPriority(int* pPriority);
}

// dxgi.h: 2414
interface IDXGIFactory1: IDXGIFactory {
    static immutable iidof = GUID(0x770aae78, 0xf26f, 0x4dba, [0xa8, 0x29, 0x25, 0x3c, 0x83, 0xd1, 0xb3, 0x87]);
    extern(C) int EnumAdapters1(uint Adapter, IDXGIAdapter1* ppAdapter);
    extern(C) int IsCurrent();
}

// dxgi.h: 2597
interface IDXGIAdapter1: IDXGIAdapter {
    static immutable iidof = GUID(0x29038f61, 0x3839, 0x4626, [0x91, 0xfd, 0x08, 0x68, 0x79, 0x01, 0x1a, 0x05]);
    extern(C) int GetDesc1(DXGI_ADAPTER_DESC1* pDesc);
}

// dxgi.h: 2751
interface IDXGIDevice1: IDXGIDevice {
    static immutable iidof = GUID(0x77db970f, 0x6276, 0x48ba, [0xba, 0x28, 0x07, 0x01, 0x43, 0xb4, 0x39, 0x2c]);
    extern(C) int SetMaximumFrameLatency(uint MaxLatency);
    extern(C) int GetMaximumFrameLatency(uint* pMaxLatency);
}

extern(C) int CreateDXGIFactory(_GUID* riid, void** ppFactory);
