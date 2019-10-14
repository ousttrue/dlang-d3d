// cpptypeinfo generated
module windowskits.d3dtypes;

import core.sys.windows.windef;
import core.sys.windows.com;
import windowskits.dxgitype;

enum _D3DLIGHTTYPE {
    D3DLIGHT_POINT = 0x00000001,
    D3DLIGHT_SPOT = 0x00000002,
    D3DLIGHT_DIRECTIONAL = 0x00000003,
    D3DLIGHT_PARALLELPOINT = 0x00000004,
    D3DLIGHT_FORCE_DWORD = 0x7fffffff,
}

enum _D3DOPCODE {
    D3DOP_POINT = 0x00000001,
    D3DOP_LINE = 0x00000002,
    D3DOP_TRIANGLE = 0x00000003,
    D3DOP_MATRIXLOAD = 0x00000004,
    D3DOP_MATRIXMULTIPLY = 0x00000005,
    D3DOP_STATETRANSFORM = 0x00000006,
    D3DOP_STATELIGHT = 0x00000007,
    D3DOP_STATERENDER = 0x00000008,
    D3DOP_PROCESSVERTICES = 0x00000009,
    D3DOP_TEXTURELOAD = 0x0000000a,
    D3DOP_EXIT = 0x0000000b,
    D3DOP_BRANCHFORWARD = 0x0000000c,
    D3DOP_SPAN = 0x0000000d,
    D3DOP_SETSTATUS = 0x0000000e,
    D3DOP_FORCE_DWORD = 0x7fffffff,
}

enum _D3DSHADEMODE {
    D3DSHADE_FLAT = 0x00000001,
    D3DSHADE_GOURAUD = 0x00000002,
    D3DSHADE_PHONG = 0x00000003,
    D3DSHADE_FORCE_DWORD = 0x7fffffff,
}

enum _D3DFILLMODE {
    D3DFILL_POINT = 0x00000001,
    D3DFILL_WIREFRAME = 0x00000002,
    D3DFILL_SOLID = 0x00000003,
    D3DFILL_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREFILTER {
    D3DFILTER_NEAREST = 0x00000001,
    D3DFILTER_LINEAR = 0x00000002,
    D3DFILTER_MIPNEAREST = 0x00000003,
    D3DFILTER_MIPLINEAR = 0x00000004,
    D3DFILTER_LINEARMIPNEAREST = 0x00000005,
    D3DFILTER_LINEARMIPLINEAR = 0x00000006,
    D3DFILTER_FORCE_DWORD = 0x7fffffff,
}

enum _D3DBLEND {
    D3DBLEND_ZERO = 0x00000001,
    D3DBLEND_ONE = 0x00000002,
    D3DBLEND_SRCCOLOR = 0x00000003,
    D3DBLEND_INVSRCCOLOR = 0x00000004,
    D3DBLEND_SRCALPHA = 0x00000005,
    D3DBLEND_INVSRCALPHA = 0x00000006,
    D3DBLEND_DESTALPHA = 0x00000007,
    D3DBLEND_INVDESTALPHA = 0x00000008,
    D3DBLEND_DESTCOLOR = 0x00000009,
    D3DBLEND_INVDESTCOLOR = 0x0000000a,
    D3DBLEND_SRCALPHASAT = 0x0000000b,
    D3DBLEND_BOTHSRCALPHA = 0x0000000c,
    D3DBLEND_BOTHINVSRCALPHA = 0x0000000d,
    D3DBLEND_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREBLEND {
    D3DTBLEND_DECAL = 0x00000001,
    D3DTBLEND_MODULATE = 0x00000002,
    D3DTBLEND_DECALALPHA = 0x00000003,
    D3DTBLEND_MODULATEALPHA = 0x00000004,
    D3DTBLEND_DECALMASK = 0x00000005,
    D3DTBLEND_MODULATEMASK = 0x00000006,
    D3DTBLEND_COPY = 0x00000007,
    D3DTBLEND_ADD = 0x00000008,
    D3DTBLEND_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREADDRESS {
    D3DTADDRESS_WRAP = 0x00000001,
    D3DTADDRESS_MIRROR = 0x00000002,
    D3DTADDRESS_CLAMP = 0x00000003,
    D3DTADDRESS_BORDER = 0x00000004,
    D3DTADDRESS_FORCE_DWORD = 0x7fffffff,
}

enum _D3DCULL {
    D3DCULL_NONE = 0x00000001,
    D3DCULL_CW = 0x00000002,
    D3DCULL_CCW = 0x00000003,
    D3DCULL_FORCE_DWORD = 0x7fffffff,
}

enum _D3DCMPFUNC {
    D3DCMP_NEVER = 0x00000001,
    D3DCMP_LESS = 0x00000002,
    D3DCMP_EQUAL = 0x00000003,
    D3DCMP_LESSEQUAL = 0x00000004,
    D3DCMP_GREATER = 0x00000005,
    D3DCMP_NOTEQUAL = 0x00000006,
    D3DCMP_GREATEREQUAL = 0x00000007,
    D3DCMP_ALWAYS = 0x00000008,
    D3DCMP_FORCE_DWORD = 0x7fffffff,
}

enum _D3DSTENCILOP {
    D3DSTENCILOP_KEEP = 0x00000001,
    D3DSTENCILOP_ZERO = 0x00000002,
    D3DSTENCILOP_REPLACE = 0x00000003,
    D3DSTENCILOP_INCRSAT = 0x00000004,
    D3DSTENCILOP_DECRSAT = 0x00000005,
    D3DSTENCILOP_INVERT = 0x00000006,
    D3DSTENCILOP_INCR = 0x00000007,
    D3DSTENCILOP_DECR = 0x00000008,
    D3DSTENCILOP_FORCE_DWORD = 0x7fffffff,
}

enum _D3DFOGMODE {
    D3DFOG_NONE = 0x00000000,
    D3DFOG_EXP = 0x00000001,
    D3DFOG_EXP2 = 0x00000002,
    D3DFOG_LINEAR = 0x00000003,
    D3DFOG_FORCE_DWORD = 0x7fffffff,
}

enum _D3DZBUFFERTYPE {
    D3DZB_FALSE = 0x00000000,
    D3DZB_TRUE = 0x00000001,
    D3DZB_USEW = 0x00000002,
    D3DZB_FORCE_DWORD = 0x7fffffff,
}

enum _D3DANTIALIASMODE {
    D3DANTIALIAS_NONE = 0x00000000,
    D3DANTIALIAS_SORTDEPENDENT = 0x00000001,
    D3DANTIALIAS_SORTINDEPENDENT = 0x00000002,
    D3DANTIALIAS_FORCE_DWORD = 0x7fffffff,
}

enum _D3DVERTEXTYPE {
    D3DVT_VERTEX = 0x00000001,
    D3DVT_LVERTEX = 0x00000002,
    D3DVT_TLVERTEX = 0x00000003,
    D3DVT_FORCE_DWORD = 0x7fffffff,
}

enum _D3DPRIMITIVETYPE {
    D3DPT_POINTLIST = 0x00000001,
    D3DPT_LINELIST = 0x00000002,
    D3DPT_LINESTRIP = 0x00000003,
    D3DPT_TRIANGLELIST = 0x00000004,
    D3DPT_TRIANGLESTRIP = 0x00000005,
    D3DPT_TRIANGLEFAN = 0x00000006,
    D3DPT_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTRANSFORMSTATETYPE {
    D3DTRANSFORMSTATE_WORLD = 0x00000001,
    D3DTRANSFORMSTATE_VIEW = 0x00000002,
    D3DTRANSFORMSTATE_PROJECTION = 0x00000003,
    D3DTRANSFORMSTATE_WORLD1 = 0x00000004,
    D3DTRANSFORMSTATE_WORLD2 = 0x00000005,
    D3DTRANSFORMSTATE_WORLD3 = 0x00000006,
    D3DTRANSFORMSTATE_TEXTURE0 = 0x00000010,
    D3DTRANSFORMSTATE_TEXTURE1 = 0x00000011,
    D3DTRANSFORMSTATE_TEXTURE2 = 0x00000012,
    D3DTRANSFORMSTATE_TEXTURE3 = 0x00000013,
    D3DTRANSFORMSTATE_TEXTURE4 = 0x00000014,
    D3DTRANSFORMSTATE_TEXTURE5 = 0x00000015,
    D3DTRANSFORMSTATE_TEXTURE6 = 0x00000016,
    D3DTRANSFORMSTATE_TEXTURE7 = 0x00000017,
    D3DTRANSFORMSTATE_FORCE_DWORD = 0x7fffffff,
}

enum _D3DLIGHTSTATETYPE {
    D3DLIGHTSTATE_MATERIAL = 0x00000001,
    D3DLIGHTSTATE_AMBIENT = 0x00000002,
    D3DLIGHTSTATE_COLORMODEL = 0x00000003,
    D3DLIGHTSTATE_FOGMODE = 0x00000004,
    D3DLIGHTSTATE_FOGSTART = 0x00000005,
    D3DLIGHTSTATE_FOGEND = 0x00000006,
    D3DLIGHTSTATE_FOGDENSITY = 0x00000007,
    D3DLIGHTSTATE_COLORVERTEX = 0x00000008,
    D3DLIGHTSTATE_FORCE_DWORD = 0x7fffffff,
}

enum _D3DRENDERSTATETYPE {
    D3DRENDERSTATE_ANTIALIAS = 0x00000002,
    D3DRENDERSTATE_TEXTUREPERSPECTIVE = 0x00000004,
    D3DRENDERSTATE_ZENABLE = 0x00000007,
    D3DRENDERSTATE_FILLMODE = 0x00000008,
    D3DRENDERSTATE_SHADEMODE = 0x00000009,
    D3DRENDERSTATE_LINEPATTERN = 0x0000000a,
    D3DRENDERSTATE_ZWRITEENABLE = 0x0000000e,
    D3DRENDERSTATE_ALPHATESTENABLE = 0x0000000f,
    D3DRENDERSTATE_LASTPIXEL = 0x00000010,
    D3DRENDERSTATE_SRCBLEND = 0x00000013,
    D3DRENDERSTATE_DESTBLEND = 0x00000014,
    D3DRENDERSTATE_CULLMODE = 0x00000016,
    D3DRENDERSTATE_ZFUNC = 0x00000017,
    D3DRENDERSTATE_ALPHAREF = 0x00000018,
    D3DRENDERSTATE_ALPHAFUNC = 0x00000019,
    D3DRENDERSTATE_DITHERENABLE = 0x0000001a,
    D3DRENDERSTATE_ALPHABLENDENABLE = 0x0000001b,
    D3DRENDERSTATE_FOGENABLE = 0x0000001c,
    D3DRENDERSTATE_SPECULARENABLE = 0x0000001d,
    D3DRENDERSTATE_ZVISIBLE = 0x0000001e,
    D3DRENDERSTATE_STIPPLEDALPHA = 0x00000021,
    D3DRENDERSTATE_FOGCOLOR = 0x00000022,
    D3DRENDERSTATE_FOGTABLEMODE = 0x00000023,
    D3DRENDERSTATE_FOGSTART = 0x00000024,
    D3DRENDERSTATE_FOGEND = 0x00000025,
    D3DRENDERSTATE_FOGDENSITY = 0x00000026,
    D3DRENDERSTATE_EDGEANTIALIAS = 0x00000028,
    D3DRENDERSTATE_COLORKEYENABLE = 0x00000029,
    D3DRENDERSTATE_ZBIAS = 0x0000002f,
    D3DRENDERSTATE_RANGEFOGENABLE = 0x00000030,
    D3DRENDERSTATE_STENCILENABLE = 0x00000034,
    D3DRENDERSTATE_STENCILFAIL = 0x00000035,
    D3DRENDERSTATE_STENCILZFAIL = 0x00000036,
    D3DRENDERSTATE_STENCILPASS = 0x00000037,
    D3DRENDERSTATE_STENCILFUNC = 0x00000038,
    D3DRENDERSTATE_STENCILREF = 0x00000039,
    D3DRENDERSTATE_STENCILMASK = 0x0000003a,
    D3DRENDERSTATE_STENCILWRITEMASK = 0x0000003b,
    D3DRENDERSTATE_TEXTUREFACTOR = 0x0000003c,
    D3DRENDERSTATE_WRAP0 = 0x00000080,
    D3DRENDERSTATE_WRAP1 = 0x00000081,
    D3DRENDERSTATE_WRAP2 = 0x00000082,
    D3DRENDERSTATE_WRAP3 = 0x00000083,
    D3DRENDERSTATE_WRAP4 = 0x00000084,
    D3DRENDERSTATE_WRAP5 = 0x00000085,
    D3DRENDERSTATE_WRAP6 = 0x00000086,
    D3DRENDERSTATE_WRAP7 = 0x00000087,
    D3DRENDERSTATE_CLIPPING = 0x00000088,
    D3DRENDERSTATE_LIGHTING = 0x00000089,
    D3DRENDERSTATE_EXTENTS = 0x0000008a,
    D3DRENDERSTATE_AMBIENT = 0x0000008b,
    D3DRENDERSTATE_FOGVERTEXMODE = 0x0000008c,
    D3DRENDERSTATE_COLORVERTEX = 0x0000008d,
    D3DRENDERSTATE_LOCALVIEWER = 0x0000008e,
    D3DRENDERSTATE_NORMALIZENORMALS = 0x0000008f,
    D3DRENDERSTATE_COLORKEYBLENDENABLE = 0x00000090,
    D3DRENDERSTATE_DIFFUSEMATERIALSOURCE = 0x00000091,
    D3DRENDERSTATE_SPECULARMATERIALSOURCE = 0x00000092,
    D3DRENDERSTATE_AMBIENTMATERIALSOURCE = 0x00000093,
    D3DRENDERSTATE_EMISSIVEMATERIALSOURCE = 0x00000094,
    D3DRENDERSTATE_VERTEXBLEND = 0x00000097,
    D3DRENDERSTATE_CLIPPLANEENABLE = 0x00000098,
    D3DRENDERSTATE_TEXTUREHANDLE = 0x00000001,
    D3DRENDERSTATE_TEXTUREADDRESS = 0x00000003,
    D3DRENDERSTATE_WRAPU = 0x00000005,
    D3DRENDERSTATE_WRAPV = 0x00000006,
    D3DRENDERSTATE_MONOENABLE = 0x0000000b,
    D3DRENDERSTATE_ROP2 = 0x0000000c,
    D3DRENDERSTATE_PLANEMASK = 0x0000000d,
    D3DRENDERSTATE_TEXTUREMAG = 0x00000011,
    D3DRENDERSTATE_TEXTUREMIN = 0x00000012,
    D3DRENDERSTATE_TEXTUREMAPBLEND = 0x00000015,
    D3DRENDERSTATE_SUBPIXEL = 0x0000001f,
    D3DRENDERSTATE_SUBPIXELX = 0x00000020,
    D3DRENDERSTATE_STIPPLEENABLE = 0x00000027,
    D3DRENDERSTATE_BORDERCOLOR = 0x0000002b,
    D3DRENDERSTATE_TEXTUREADDRESSU = 0x0000002c,
    D3DRENDERSTATE_TEXTUREADDRESSV = 0x0000002d,
    D3DRENDERSTATE_MIPMAPLODBIAS = 0x0000002e,
    D3DRENDERSTATE_ANISOTROPY = 0x00000031,
    D3DRENDERSTATE_FLUSHBATCH = 0x00000032,
    D3DRENDERSTATE_TRANSLUCENTSORTINDEPENDENT = 0x00000033,
    D3DRENDERSTATE_STIPPLEPATTERN00 = 0x00000040,
    D3DRENDERSTATE_STIPPLEPATTERN01 = 0x00000041,
    D3DRENDERSTATE_STIPPLEPATTERN02 = 0x00000042,
    D3DRENDERSTATE_STIPPLEPATTERN03 = 0x00000043,
    D3DRENDERSTATE_STIPPLEPATTERN04 = 0x00000044,
    D3DRENDERSTATE_STIPPLEPATTERN05 = 0x00000045,
    D3DRENDERSTATE_STIPPLEPATTERN06 = 0x00000046,
    D3DRENDERSTATE_STIPPLEPATTERN07 = 0x00000047,
    D3DRENDERSTATE_STIPPLEPATTERN08 = 0x00000048,
    D3DRENDERSTATE_STIPPLEPATTERN09 = 0x00000049,
    D3DRENDERSTATE_STIPPLEPATTERN10 = 0x0000004a,
    D3DRENDERSTATE_STIPPLEPATTERN11 = 0x0000004b,
    D3DRENDERSTATE_STIPPLEPATTERN12 = 0x0000004c,
    D3DRENDERSTATE_STIPPLEPATTERN13 = 0x0000004d,
    D3DRENDERSTATE_STIPPLEPATTERN14 = 0x0000004e,
    D3DRENDERSTATE_STIPPLEPATTERN15 = 0x0000004f,
    D3DRENDERSTATE_STIPPLEPATTERN16 = 0x00000050,
    D3DRENDERSTATE_STIPPLEPATTERN17 = 0x00000051,
    D3DRENDERSTATE_STIPPLEPATTERN18 = 0x00000052,
    D3DRENDERSTATE_STIPPLEPATTERN19 = 0x00000053,
    D3DRENDERSTATE_STIPPLEPATTERN20 = 0x00000054,
    D3DRENDERSTATE_STIPPLEPATTERN21 = 0x00000055,
    D3DRENDERSTATE_STIPPLEPATTERN22 = 0x00000056,
    D3DRENDERSTATE_STIPPLEPATTERN23 = 0x00000057,
    D3DRENDERSTATE_STIPPLEPATTERN24 = 0x00000058,
    D3DRENDERSTATE_STIPPLEPATTERN25 = 0x00000059,
    D3DRENDERSTATE_STIPPLEPATTERN26 = 0x0000005a,
    D3DRENDERSTATE_STIPPLEPATTERN27 = 0x0000005b,
    D3DRENDERSTATE_STIPPLEPATTERN28 = 0x0000005c,
    D3DRENDERSTATE_STIPPLEPATTERN29 = 0x0000005d,
    D3DRENDERSTATE_STIPPLEPATTERN30 = 0x0000005e,
    D3DRENDERSTATE_STIPPLEPATTERN31 = 0x0000005f,
    D3DRENDERSTATE_FOGTABLESTART = 0x00000024,
    D3DRENDERSTATE_FOGTABLEEND = 0x00000025,
    D3DRENDERSTATE_FOGTABLEDENSITY = 0x00000026,
    D3DRENDERSTATE_FORCE_DWORD = 0x7fffffff,
}

enum _D3DMATERIALCOLORSOURCE {
    D3DMCS_MATERIAL = 0x00000000,
    D3DMCS_COLOR1 = 0x00000001,
    D3DMCS_COLOR2 = 0x00000002,
    D3DMCS_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTURESTAGESTATETYPE {
    D3DTSS_COLOROP = 0x00000001,
    D3DTSS_COLORARG1 = 0x00000002,
    D3DTSS_COLORARG2 = 0x00000003,
    D3DTSS_ALPHAOP = 0x00000004,
    D3DTSS_ALPHAARG1 = 0x00000005,
    D3DTSS_ALPHAARG2 = 0x00000006,
    D3DTSS_BUMPENVMAT00 = 0x00000007,
    D3DTSS_BUMPENVMAT01 = 0x00000008,
    D3DTSS_BUMPENVMAT10 = 0x00000009,
    D3DTSS_BUMPENVMAT11 = 0x0000000a,
    D3DTSS_TEXCOORDINDEX = 0x0000000b,
    D3DTSS_ADDRESS = 0x0000000c,
    D3DTSS_ADDRESSU = 0x0000000d,
    D3DTSS_ADDRESSV = 0x0000000e,
    D3DTSS_BORDERCOLOR = 0x0000000f,
    D3DTSS_MAGFILTER = 0x00000010,
    D3DTSS_MINFILTER = 0x00000011,
    D3DTSS_MIPFILTER = 0x00000012,
    D3DTSS_MIPMAPLODBIAS = 0x00000013,
    D3DTSS_MAXMIPLEVEL = 0x00000014,
    D3DTSS_MAXANISOTROPY = 0x00000015,
    D3DTSS_BUMPENVLSCALE = 0x00000016,
    D3DTSS_BUMPENVLOFFSET = 0x00000017,
    D3DTSS_TEXTURETRANSFORMFLAGS = 0x00000018,
    D3DTSS_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREOP {
    D3DTOP_DISABLE = 0x00000001,
    D3DTOP_SELECTARG1 = 0x00000002,
    D3DTOP_SELECTARG2 = 0x00000003,
    D3DTOP_MODULATE = 0x00000004,
    D3DTOP_MODULATE2X = 0x00000005,
    D3DTOP_MODULATE4X = 0x00000006,
    D3DTOP_ADD = 0x00000007,
    D3DTOP_ADDSIGNED = 0x00000008,
    D3DTOP_ADDSIGNED2X = 0x00000009,
    D3DTOP_SUBTRACT = 0x0000000a,
    D3DTOP_ADDSMOOTH = 0x0000000b,
    D3DTOP_BLENDDIFFUSEALPHA = 0x0000000c,
    D3DTOP_BLENDTEXTUREALPHA = 0x0000000d,
    D3DTOP_BLENDFACTORALPHA = 0x0000000e,
    D3DTOP_BLENDTEXTUREALPHAPM = 0x0000000f,
    D3DTOP_BLENDCURRENTALPHA = 0x00000010,
    D3DTOP_PREMODULATE = 0x00000011,
    D3DTOP_MODULATEALPHA_ADDCOLOR = 0x00000012,
    D3DTOP_MODULATECOLOR_ADDALPHA = 0x00000013,
    D3DTOP_MODULATEINVALPHA_ADDCOLOR = 0x00000014,
    D3DTOP_MODULATEINVCOLOR_ADDALPHA = 0x00000015,
    D3DTOP_BUMPENVMAP = 0x00000016,
    D3DTOP_BUMPENVMAPLUMINANCE = 0x00000017,
    D3DTOP_DOTPRODUCT3 = 0x00000018,
    D3DTOP_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREMAGFILTER {
    D3DTFG_POINT = 0x00000001,
    D3DTFG_LINEAR = 0x00000002,
    D3DTFG_FLATCUBIC = 0x00000003,
    D3DTFG_GAUSSIANCUBIC = 0x00000004,
    D3DTFG_ANISOTROPIC = 0x00000005,
    D3DTFG_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREMINFILTER {
    D3DTFN_POINT = 0x00000001,
    D3DTFN_LINEAR = 0x00000002,
    D3DTFN_ANISOTROPIC = 0x00000003,
    D3DTFN_FORCE_DWORD = 0x7fffffff,
}

enum _D3DTEXTUREMIPFILTER {
    D3DTFP_NONE = 0x00000001,
    D3DTFP_POINT = 0x00000002,
    D3DTFP_LINEAR = 0x00000003,
    D3DTFP_FORCE_DWORD = 0x7fffffff,
}

enum _D3DSTATEBLOCKTYPE {
    D3DSBT_ALL = 0x00000001,
    D3DSBT_PIXELSTATE = 0x00000002,
    D3DSBT_VERTEXSTATE = 0x00000003,
    D3DSBT_FORCE_DWORD = -0x0000001,
}

enum _D3DVERTEXBLENDFLAGS {
    D3DVBLEND_DISABLE = 0x00000000,
    D3DVBLEND_1WEIGHT = 0x00000001,
    D3DVBLEND_2WEIGHTS = 0x00000002,
    D3DVBLEND_3WEIGHTS = 0x00000003,
}

enum _D3DTEXTURETRANSFORMFLAGS {
    D3DTTFF_DISABLE = 0x00000000,
    D3DTTFF_COUNT1 = 0x00000001,
    D3DTTFF_COUNT2 = 0x00000002,
    D3DTTFF_COUNT3 = 0x00000003,
    D3DTTFF_COUNT4 = 0x00000004,
    D3DTTFF_PROJECTED = 0x00000100,
    D3DTTFF_FORCE_DWORD = 0x7fffffff,
}

struct _D3DHVERTEX{
    uint dwFlags;
    union {
float hx;
float dvHX;
} ;
    union {
float hy;
float dvHY;
} ;
    union {
float hz;
float dvHZ;
} ;
}

struct _D3DRECT{
    union {
int x1;
int lX1;
} ;
    union {
int y1;
int lY1;
} ;
    union {
int x2;
int lX2;
} ;
    union {
int y2;
int lY2;
} ;
}

struct _D3DVECTOR{
    union {
float x;
float dvX;
} ;
    union {
float y;
float dvY;
} ;
    union {
float z;
float dvZ;
} ;
}

struct _D3DLIGHTINGELEMENT{
    _D3DVECTOR dvPosition;
    _D3DVECTOR dvNormal;
}

struct _D3DTLVERTEX{
    union {
float sx;
float dvSX;
} ;
    union {
float sy;
float dvSY;
} ;
    union {
float sz;
float dvSZ;
} ;
    union {
float rhw;
float dvRHW;
} ;
    union {
uint color;
uint dcColor;
} ;
    union {
uint specular;
uint dcSpecular;
} ;
    union {
float tu;
float dvTU;
} ;
    union {
float tv;
float dvTV;
} ;
}

struct _D3DSTATUS{
    uint dwFlags;
    uint dwStatus;
    _D3DRECT drExtent;
}

struct _D3DDP_PTRSTRIDE{
    void* lpvData;
    uint dwStride;
}

