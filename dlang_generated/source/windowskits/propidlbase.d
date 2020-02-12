// This source code was generated by regenerator
module windowskits.propidlbase;
import windowskits.wtypes;
import core.sys.windows.winnt;
import windowskits.minwindef;
import core.sys.windows.windef;
import windowskits.winnt;
import core.sys.windows.basetsd;
import windowskits.wtypesbase;
import windowskits.guiddef;
import core.sys.windows.basetyps;
import core.sys.windows.unknwn;
import windowskits.guidutil;
import windowskits.oaidl;
import windowskits.objidlbase;
import windowskits.objidl;
struct tagPROPVARIANT___anonymous_4
{
    VARTYPE vt;
    PROPVAR_PAD1 wReserved1;
    PROPVAR_PAD2 wReserved2;
    PROPVAR_PAD3 wReserved3;
    union {
        CHAR cVal;
        UCHAR bVal;
        SHORT iVal;
        USHORT uiVal;
        LONG lVal;
        ULONG ulVal;
        INT intVal;
        UINT uintVal;
        LARGE_INTEGER hVal;
        ULARGE_INTEGER uhVal;
        FLOAT fltVal;
        DOUBLE dblVal;
        VARIANT_BOOL boolVal;
        VARIANT_BOOL __OBSOLETE__VARIANT_BOOL;
        SCODE scode;
        CY cyVal;
        DATE date;
        FILETIME filetime;
        CLSID* puuid;
        CLIPDATA* pclipdata;
        BSTR bstrVal;
        BSTRBLOB bstrblobVal;
        BLOB blob;
        LPSTR pszVal;
        LPWSTR pwszVal;
        IUnknown punkVal;
        IDispatch pdispVal;
        IStream pStream;
        IStorage pStorage;
        LPVERSIONEDSTREAM pVersionedStream;
        LPSAFEARRAY parray;
        CAC cac;
        CAUB caub;
        CAI cai;
        CAUI caui;
        CAL cal;
        CAUL caul;
        CAH cah;
        CAUH cauh;
        CAFLT caflt;
        CADBL cadbl;
        CABOOL cabool;
        CASCODE cascode;
        CACY cacy;
        CADATE cadate;
        CAFILETIME cafiletime;
        CACLSID cauuid;
        CACLIPDATA caclipdata;
        CABSTR cabstr;
        CABSTRBLOB cabstrblob;
        CALPSTR calpstr;
        CALPWSTR calpwstr;
        CAPROPVARIANT capropvar;
        CHAR* pcVal;
        UCHAR* pbVal;
        SHORT* piVal;
        USHORT* puiVal;
        LONG* plVal;
        ULONG* pulVal;
        INT* pintVal;
        UINT* puintVal;
        FLOAT* pfltVal;
        DOUBLE* pdblVal;
        VARIANT_BOOL* pboolVal;
        DECIMAL* pdecVal;
        SCODE* pscode;
        CY* pcyVal;
        DATE* pdate;
        BSTR* pbstrVal;
        IUnknown* ppunkVal;
        IDispatch* ppdispVal;
        LPSAFEARRAY* pparray;
        PROPVARIANT* pvarVal;
    }
}
alias PROPVARIANT = tagPROPVARIANT;
struct tagPROPVARIANT
{
    union {
        tagPROPVARIANT___anonymous_4 __param__1;
        DECIMAL decVal;
    }
}
alias PROPVAR_PAD1 = WORD;
alias PROPVAR_PAD2 = WORD;
alias PROPVAR_PAD3 = WORD;
alias LPVERSIONEDSTREAM = tagVersionedStream*;
struct tagVersionedStream
{
    GUID guidVersion;
    IStream pStream;
}
alias CAC = tagCAC;
struct tagCAC
{
    ULONG cElems;
    CHAR* pElems;
}
alias CAUB = tagCAUB;
struct tagCAUB
{
    ULONG cElems;
    UCHAR* pElems;
}
alias CAI = tagCAI;
struct tagCAI
{
    ULONG cElems;
    SHORT* pElems;
}
alias CAUI = tagCAUI;
struct tagCAUI
{
    ULONG cElems;
    USHORT* pElems;
}
alias CAL = tagCAL;
struct tagCAL
{
    ULONG cElems;
    LONG* pElems;
}
alias CAUL = tagCAUL;
struct tagCAUL
{
    ULONG cElems;
    ULONG* pElems;
}
alias CAH = tagCAH;
struct tagCAH
{
    ULONG cElems;
    LARGE_INTEGER* pElems;
}
alias CAUH = tagCAUH;
struct tagCAUH
{
    ULONG cElems;
    ULARGE_INTEGER* pElems;
}
alias CAFLT = tagCAFLT;
struct tagCAFLT
{
    ULONG cElems;
    FLOAT* pElems;
}
alias CADBL = tagCADBL;
struct tagCADBL
{
    ULONG cElems;
    DOUBLE* pElems;
}
alias CABOOL = tagCABOOL;
struct tagCABOOL
{
    ULONG cElems;
    VARIANT_BOOL* pElems;
}
alias CASCODE = tagCASCODE;
struct tagCASCODE
{
    ULONG cElems;
    SCODE* pElems;
}
alias CACY = tagCACY;
struct tagCACY
{
    ULONG cElems;
    CY* pElems;
}
alias CADATE = tagCADATE;
struct tagCADATE
{
    ULONG cElems;
    DATE* pElems;
}
alias CAFILETIME = tagCAFILETIME;
struct tagCAFILETIME
{
    ULONG cElems;
    FILETIME* pElems;
}
alias CACLSID = tagCACLSID;
struct tagCACLSID
{
    ULONG cElems;
    CLSID* pElems;
}
alias CACLIPDATA = tagCACLIPDATA;
struct tagCACLIPDATA
{
    ULONG cElems;
    CLIPDATA* pElems;
}
alias CABSTR = tagCABSTR;
struct tagCABSTR
{
    ULONG cElems;
    BSTR* pElems;
}
alias CABSTRBLOB = tagCABSTRBLOB;
struct tagCABSTRBLOB
{
    ULONG cElems;
    BSTRBLOB* pElems;
}
alias CALPSTR = tagCALPSTR;
struct tagCALPSTR
{
    ULONG cElems;
    LPSTR* pElems;
}
alias CALPWSTR = tagCALPWSTR;
struct tagCALPWSTR
{
    ULONG cElems;
    LPWSTR* pElems;
}
alias CAPROPVARIANT = tagCAPROPVARIANT;
struct tagCAPROPVARIANT
{
    ULONG cElems;
    PROPVARIANT* pElems;
}