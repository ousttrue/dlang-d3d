module windowskits.dxgicommon;
import windowskits.minwindef;
import core.sys.windows.windef;
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
