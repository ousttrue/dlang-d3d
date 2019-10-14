// cpptypeinfo generated
module windowskits.ntdef;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.guiddef;

enum COMPARTMENT_ID {
    UNSPECIFIED_COMPARTMENT_ID = 0x00000000,
    DEFAULT_COMPARTMENT_ID = 0x00000001,
}

enum _EVENT_TYPE {
    NotificationEvent = 0x00000000,
    SynchronizationEvent = 0x00000001,
}

enum _TIMER_TYPE {
    NotificationTimer = 0x00000000,
    SynchronizationTimer = 0x00000001,
}

enum _WAIT_TYPE {
    WaitAll = 0x00000000,
    WaitAny = 0x00000001,
    WaitNotification = 0x00000002,
    WaitDequeue = 0x00000003,
}

enum _NT_PRODUCT_TYPE {
    NtProductWinNt = 0x00000001,
    NtProductLanManNt = 0x00000002,
    NtProductServer = 0x00000003,
}

enum _SUITE_TYPE {
    SmallBusiness = 0x00000000,
    Enterprise = 0x00000001,
    BackOffice = 0x00000002,
    CommunicationServer = 0x00000003,
    TerminalServer = 0x00000004,
    SmallBusinessRestricted = 0x00000005,
    EmbeddedNT = 0x00000006,
    DataCenter = 0x00000007,
    SingleUserTS = 0x00000008,
    Personal = 0x00000009,
    Blade = 0x0000000a,
    EmbeddedRestricted = 0x0000000b,
    SecurityAppliance = 0x0000000c,
    StorageServer = 0x0000000d,
    ComputeServer = 0x0000000e,
    WHServer = 0x0000000f,
    PhoneNT = 0x00000010,
    MultiUserTS = 0x00000011,
    MaxSuiteType = 0x00000012,
}

struct _LIST_ENTRY{
    _LIST_ENTRY* Flink;
    _LIST_ENTRY* Blink;
}

struct _SINGLE_LIST_ENTRY{
    _SINGLE_LIST_ENTRY* Next;
}

struct _RTL_BALANCED_NODE{
    union {
_RTL_BALANCED_NODE** Children;
} ;
    union {
ubyte Red;
ubyte Balance;
ulong ParentValue;
} ;
}

struct _UNICODE_STRING{
    ushort Length;
    ushort MaximumLength;
    ushort* Buffer;
}

union _LARGE_INTEGER{
    // anonymous struct {uint LowPart;int HighPart;} u;
    long QuadPart;
}

struct _LUID{
    uint LowPart;
    int HighPart;
}

ubyte _rotl8(ubyte Value, ubyte Shift);
ushort _rotl16(ushort Value, ubyte Shift);
uint _rotl(uint Value, int Shift);
ulong _rotl64(ulong Value, int Shift);
