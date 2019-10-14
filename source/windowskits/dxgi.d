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
    int SetPrivateData(_GUID* Name, uint DataSize, void* pData);
    int SetPrivateDataInterface(_GUID* Name, IUnknown* pUnknown);
    int GetPrivateData(_GUID* Name, uint* pDataSize, void* pData);
    int GetParent(_GUID* riid, void** ppParent);
}

// dxgi.h: 454
interface IDXGIDeviceSubObject: IDXGIObject {
    static immutable iidof = GUID(0x3d3e0379, 0xf9de, 0x4d58, [0xbb, 0x6c, 0x18, 0xd6, 0x29, 0x92, 0xf1, 0xa6]);
    int GetDevice(_GUID* riid, void** ppDevice);
}

// dxgi.h: 584
interface IDXGIResource: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x035f3ab4, 0x482e, 0x4e50, [0xb4, 0x1f, 0x8a, 0x7f, 0x8b, 0xd8, 0x96, 0x0b]);
    int GetSharedHandle(void** pSharedHandle);
    int GetUsage(uint* pUsage);
    int SetEvictionPriority(uint EvictionPriority);
    int GetEvictionPriority(uint* pEvictionPriority);
}

// dxgi.h: 753
interface IDXGIKeyedMutex: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x9d8e1289, 0xd7b3, 0x465f, [0x81, 0x26, 0x25, 0x0e, 0x34, 0x9a, 0xf8, 0x5d]);
    int AcquireSync(ulong Key, uint dwMilliseconds);
    int ReleaseSync(ulong Key);
}

// dxgi.h: 1073
interface IDXGISurface1: IDXGISurface {
    static immutable iidof = GUID(0x4ae63092, 0x6327, 0x4c1b, [0x80, 0xae, 0xbf, 0xe1, 0x2e, 0xa3, 0x2b, 0x86]);
    int GetDC(int Discard, HDC** phdc);
    int ReleaseDC(tagRECT* pDirtyRect);
}

// dxgi.h: 1257
interface IDXGIAdapter: IDXGIObject {
    static immutable iidof = GUID(0x2411e7e1, 0x12ac, 0x4ccf, [0xbd, 0x14, 0x97, 0x98, 0xe8, 0x53, 0x4d, 0xc0]);
    int EnumOutputs(uint Output, IDXGIOutput** ppOutput);
    int GetDesc(DXGI_ADAPTER_DESC* pDesc);
    int CheckInterfaceSupport(_GUID* InterfaceName, _LARGE_INTEGER* pUMDVersion);
}

// dxgi.h: 1425
interface IDXGIOutput: IDXGIObject {
    static immutable iidof = GUID(0xae02eedb, 0xc735, 0x4690, [0x8d, 0x52, 0x5a, 0x8d, 0xc2, 0x02, 0x13, 0xaa]);
    int GetDesc(DXGI_OUTPUT_DESC* pDesc);
    int GetDisplayModeList(DXGI_FORMAT EnumFormat, uint Flags, uint* pNumModes, DXGI_MODE_DESC* pDesc);
    int FindClosestMatchingMode(DXGI_MODE_DESC* pModeToMatch, DXGI_MODE_DESC* pClosestMatch, IUnknown* pConcernedDevice);
    int WaitForVBlank();
    int TakeOwnership(IUnknown* pDevice, int Exclusive);
    void ReleaseOwnership();
    int GetGammaControlCapabilities(DXGI_GAMMA_CONTROL_CAPABILITIES* pGammaCaps);
    int SetGammaControl(DXGI_GAMMA_CONTROL* pArray);
    int GetGammaControl(DXGI_GAMMA_CONTROL* pArray);
    int SetDisplaySurface(IDXGISurface* pScanoutSurface);
    int GetDisplaySurfaceData(IDXGISurface* pDestination);
    int GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
}

// dxgi.h: 1711
interface IDXGISwapChain: IDXGIDeviceSubObject {
    static immutable iidof = GUID(0x310d36a0, 0xd2e7, 0x4c0a, [0xaa, 0x04, 0x6a, 0x9d, 0x23, 0xb8, 0x88, 0x6a]);
    int Present(uint SyncInterval, uint Flags);
    int GetBuffer(uint Buffer, _GUID* riid, void** ppSurface);
    int SetFullscreenState(int Fullscreen, IDXGIOutput* pTarget);
    int GetFullscreenState(int* pFullscreen, IDXGIOutput** ppTarget);
    int GetDesc(DXGI_SWAP_CHAIN_DESC* pDesc);
    int ResizeBuffers(uint BufferCount, uint Width, uint Height, DXGI_FORMAT NewFormat, uint SwapChainFlags);
    int ResizeTarget(DXGI_MODE_DESC* pNewTargetParameters);
    int GetContainingOutput(IDXGIOutput** ppOutput);
    int GetFrameStatistics(DXGI_FRAME_STATISTICS* pStats);
    int GetLastPresentCount(uint* pLastPresentCount);
}

// dxgi.h: 1986
interface IDXGIFactory: IDXGIObject {
    static immutable iidof = GUID(0x7b7166ec, 0x21c7, 0x44ae, [0xb2, 0x1a, 0xc9, 0xae, 0x32, 0x1a, 0xe3, 0x69]);
    int EnumAdapters(uint Adapter, IDXGIAdapter** ppAdapter);
    int MakeWindowAssociation(HWND WindowHandle, uint Flags);
    int GetWindowAssociation(HWND* pWindowHandle);
    int CreateSwapChain(IUnknown* pDevice, DXGI_SWAP_CHAIN_DESC* pDesc, IDXGISwapChain** ppSwapChain);
    int CreateSoftwareAdapter(HINSTANCE* Module, IDXGIAdapter** ppAdapter);
}

// dxgi.h: 2186
interface IDXGIDevice: IDXGIObject {
    static immutable iidof = GUID(0x54ec77fa, 0x1377, 0x44e6, [0x8c, 0x32, 0x88, 0xfd, 0x5f, 0x44, 0xc8, 0x4c]);
    int GetAdapter(IDXGIAdapter** pAdapter);
    int CreateSurface(DXGI_SURFACE_DESC* pDesc, uint NumSurfaces, uint Usage, DXGI_SHARED_RESOURCE* pSharedResource, IDXGISurface** ppSurface);
    int QueryResourceResidency(IUnknown** ppResources, DXGI_RESIDENCY* pResidencyStatus, uint NumResources);
    int SetGPUThreadPriority(int Priority);
    int GetGPUThreadPriority(int* pPriority);
}

// dxgi.h: 2414
interface IDXGIFactory1: IDXGIFactory {
    static immutable iidof = GUID(0x770aae78, 0xf26f, 0x4dba, [0xa8, 0x29, 0x25, 0x3c, 0x83, 0xd1, 0xb3, 0x87]);
    int EnumAdapters1(uint Adapter, IDXGIAdapter1** ppAdapter);
    int IsCurrent();
}

// dxgi.h: 2597
interface IDXGIAdapter1: IDXGIAdapter {
    static immutable iidof = GUID(0x29038f61, 0x3839, 0x4626, [0x91, 0xfd, 0x08, 0x68, 0x79, 0x01, 0x1a, 0x05]);
    int GetDesc1(DXGI_ADAPTER_DESC1* pDesc);
}

// dxgi.h: 2751
interface IDXGIDevice1: IDXGIDevice {
    static immutable iidof = GUID(0x77db970f, 0x6276, 0x48ba, [0xba, 0x28, 0x07, 0x01, 0x43, 0xb4, 0x39, 0x2c]);
    int SetMaximumFrameLatency(uint MaxLatency);
    int GetMaximumFrameLatency(uint* pMaxLatency);
}

int CreateDXGIFactory(_GUID* riid, void** ppFactory);
