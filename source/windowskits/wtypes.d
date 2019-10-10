// cpptypeinfo generated: 2019-10-10 20:57:09.610701
module windowskits.wtypes;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.wtypesbase;
import windowskits.wingdi;
import windowskits.guiddef;

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

