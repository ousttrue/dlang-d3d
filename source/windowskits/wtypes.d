// cpptypeinfo generated
module windowskits.wtypes;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.wtypesbase;
import windowskits.wingdi;
import windowskits.guiddef;

enum tagDVASPECT {
    DVASPECT_CONTENT = 0x00000001,
    DVASPECT_THUMBNAIL = 0x00000002,
    DVASPECT_ICON = 0x00000004,
    DVASPECT_DOCPRINT = 0x00000008,
}

enum tagSTGC {
    STGC_DEFAULT = 0x00000000,
    STGC_OVERWRITE = 0x00000001,
    STGC_ONLYIFCURRENT = 0x00000002,
    STGC_DANGEROUSLYCOMMITMERELYTODISKCACHE = 0x00000004,
    STGC_CONSOLIDATE = 0x00000008,
}

enum tagSTGMOVE {
    STGMOVE_MOVE = 0x00000000,
    STGMOVE_COPY = 0x00000001,
    STGMOVE_SHALLOWCOPY = 0x00000002,
}

enum tagSTATFLAG {
    STATFLAG_DEFAULT = 0x00000000,
    STATFLAG_NONAME = 0x00000001,
    STATFLAG_NOOPEN = 0x00000002,
}

enum VARENUM {
    VT_EMPTY = 0x00000000,
    VT_NULL = 0x00000001,
    VT_I2 = 0x00000002,
    VT_I4 = 0x00000003,
    VT_R4 = 0x00000004,
    VT_R8 = 0x00000005,
    VT_CY = 0x00000006,
    VT_DATE = 0x00000007,
    VT_BSTR = 0x00000008,
    VT_DISPATCH = 0x00000009,
    VT_ERROR = 0x0000000a,
    VT_BOOL = 0x0000000b,
    VT_VARIANT = 0x0000000c,
    VT_UNKNOWN = 0x0000000d,
    VT_DECIMAL = 0x0000000e,
    VT_I1 = 0x00000010,
    VT_UI1 = 0x00000011,
    VT_UI2 = 0x00000012,
    VT_UI4 = 0x00000013,
    VT_I8 = 0x00000014,
    VT_UI8 = 0x00000015,
    VT_INT = 0x00000016,
    VT_UINT = 0x00000017,
    VT_VOID = 0x00000018,
    VT_HRESULT = 0x00000019,
    VT_PTR = 0x0000001a,
    VT_SAFEARRAY = 0x0000001b,
    VT_CARRAY = 0x0000001c,
    VT_USERDEFINED = 0x0000001d,
    VT_LPSTR = 0x0000001e,
    VT_LPWSTR = 0x0000001f,
    VT_RECORD = 0x00000024,
    VT_INT_PTR = 0x00000025,
    VT_UINT_PTR = 0x00000026,
    VT_FILETIME = 0x00000040,
    VT_BLOB = 0x00000041,
    VT_STREAM = 0x00000042,
    VT_STORAGE = 0x00000043,
    VT_STREAMED_OBJECT = 0x00000044,
    VT_STORED_OBJECT = 0x00000045,
    VT_BLOB_OBJECT = 0x00000046,
    VT_CF = 0x00000047,
    VT_CLSID = 0x00000048,
    VT_VERSIONED_STREAM = 0x00000049,
    VT_BSTR_BLOB = 0x00000fff,
    VT_VECTOR = 0x00001000,
    VT_ARRAY = 0x00002000,
    VT_BYREF = 0x00004000,
    VT_RESERVED = 0x00008000,
    VT_ILLEGAL = 0x0000ffff,
    VT_ILLEGALMASKED = 0x00000fff,
    VT_TYPEMASK = 0x00000fff,
}

enum tagTYSPEC {
    TYSPEC_CLSID = 0x00000000,
    TYSPEC_FILEEXT = 0x00000001,
    TYSPEC_MIMETYPE = 0x00000002,
    TYSPEC_FILENAME = 0x00000003,
    TYSPEC_PROGID = 0x00000004,
    TYSPEC_PACKAGENAME = 0x00000005,
    TYSPEC_OBJECTID = 0x00000006,
}

union __MIDL_IWinTypes_0001{
    uint dwValue;
    ushort* pwszName;
}

union __MIDL_IWinTypes_0002{
    int hInproc;
    _DWORD_BLOB* hRemote;
}

union __MIDL_IWinTypes_0003{
    int hInproc;
    _FLAGGED_BYTE_BLOB* hRemote;
    long hInproc64;
}

union __MIDL_IWinTypes_0004{
    int hInproc;
    _BYTE_BLOB* hRemote;
    long hInproc64;
}

struct _userHMETAFILE{
    int fContext;
    __MIDL_IWinTypes_0004 u;
}

union __MIDL_IWinTypes_0005{
    int hInproc;
    _remoteMETAFILEPICT* hRemote;
    long hInproc64;
}

struct _remoteMETAFILEPICT{
    int mm;
    int xExt;
    int yExt;
    _userHMETAFILE* hMF;
}

union __MIDL_IWinTypes_0006{
    int hInproc;
    _BYTE_BLOB* hRemote;
    long hInproc64;
}

union __MIDL_IWinTypes_0007{
    int hInproc;
    _userBITMAP* hRemote;
    long hInproc64;
}

struct _userBITMAP{
    int bmType;
    int bmWidth;
    int bmHeight;
    int bmWidthBytes;
    ushort bmPlanes;
    ushort bmBitsPixel;
    uint cbSize;
    ubyte* pBuffer;
}

union __MIDL_IWinTypes_0008{
    int hInproc;
    tagLOGPALETTE* hRemote;
    long hInproc64;
}

union __MIDL_IWinTypes_0009{
    int hInproc;
    int hRemote;
}

struct tagCSPLATFORM{
    uint dwPlatformId;
    uint dwVersionHi;
    uint dwVersionLo;
    uint dwProcessorArch;
}

union __MIDL___MIDL_itf_wtypes_0000_0001_0005{
    _GUID clsid;
    ushort* pFileExt;
    ushort* pMimeType;
    ushort* pProgId;
    ushort* pFileName;
    // anonymous struct {ushort* pPackageName;_GUID PolicyId;} ByName;
    // anonymous struct {_GUID ObjectId;_GUID PolicyId;} ByObjectId;
}

