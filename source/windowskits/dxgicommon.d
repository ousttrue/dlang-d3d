module windowskits.dxgicommon;
import core.sys.windows.windef;
import core.sys.windows.winnt;
struct DXGI_SAMPLE_DESC
{
    UINT Count;
    UINT Quality;
}
struct DXGI_RATIONAL
{
    UINT Numerator;
    UINT Denominator;
}
