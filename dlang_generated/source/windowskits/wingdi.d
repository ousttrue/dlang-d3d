// This source code was generated by regenerator
module windowskits.wingdi;
import windowskits.winnt;
import core.sys.windows.windef;
import core.sys.windows.basetsd;
import core.sys.windows.winnt;
import windowskits.minwindef;
alias LOGFONTW = tagLOGFONTW;
struct tagLOGFONTW
{
    LONG lfHeight;
    LONG lfWidth;
    LONG lfEscapement;
    LONG lfOrientation;
    LONG lfWeight;
    BYTE lfItalic;
    BYTE lfUnderline;
    BYTE lfStrikeOut;
    BYTE lfCharSet;
    BYTE lfOutPrecision;
    BYTE lfClipPrecision;
    BYTE lfQuality;
    BYTE lfPitchAndFamily;
    WCHAR[32] lfFaceName;
}