// This source code was generated by dclangen
module windowskits.dxgiformat;
enum DXGI_FORMAT
{
    _UNKNOWN = 0x0,
    _R32G32B32A32_TYPELESS = 0x1,
    _R32G32B32A32_FLOAT = 0x2,
    _R32G32B32A32_UINT = 0x3,
    _R32G32B32A32_SINT = 0x4,
    _R32G32B32_TYPELESS = 0x5,
    _R32G32B32_FLOAT = 0x6,
    _R32G32B32_UINT = 0x7,
    _R32G32B32_SINT = 0x8,
    _R16G16B16A16_TYPELESS = 0x9,
    _R16G16B16A16_FLOAT = 0xa,
    _R16G16B16A16_UNORM = 0xb,
    _R16G16B16A16_UINT = 0xc,
    _R16G16B16A16_SNORM = 0xd,
    _R16G16B16A16_SINT = 0xe,
    _R32G32_TYPELESS = 0xf,
    _R32G32_FLOAT = 0x10,
    _R32G32_UINT = 0x11,
    _R32G32_SINT = 0x12,
    _R32G8X24_TYPELESS = 0x13,
    _D32_FLOAT_S8X24_UINT = 0x14,
    _R32_FLOAT_X8X24_TYPELESS = 0x15,
    _X32_TYPELESS_G8X24_UINT = 0x16,
    _R10G10B10A2_TYPELESS = 0x17,
    _R10G10B10A2_UNORM = 0x18,
    _R10G10B10A2_UINT = 0x19,
    _R11G11B10_FLOAT = 0x1a,
    _R8G8B8A8_TYPELESS = 0x1b,
    _R8G8B8A8_UNORM = 0x1c,
    _R8G8B8A8_UNORM_SRGB = 0x1d,
    _R8G8B8A8_UINT = 0x1e,
    _R8G8B8A8_SNORM = 0x1f,
    _R8G8B8A8_SINT = 0x20,
    _R16G16_TYPELESS = 0x21,
    _R16G16_FLOAT = 0x22,
    _R16G16_UNORM = 0x23,
    _R16G16_UINT = 0x24,
    _R16G16_SNORM = 0x25,
    _R16G16_SINT = 0x26,
    _R32_TYPELESS = 0x27,
    _D32_FLOAT = 0x28,
    _R32_FLOAT = 0x29,
    _R32_UINT = 0x2a,
    _R32_SINT = 0x2b,
    _R24G8_TYPELESS = 0x2c,
    _D24_UNORM_S8_UINT = 0x2d,
    _R24_UNORM_X8_TYPELESS = 0x2e,
    _X24_TYPELESS_G8_UINT = 0x2f,
    _R8G8_TYPELESS = 0x30,
    _R8G8_UNORM = 0x31,
    _R8G8_UINT = 0x32,
    _R8G8_SNORM = 0x33,
    _R8G8_SINT = 0x34,
    _R16_TYPELESS = 0x35,
    _R16_FLOAT = 0x36,
    _D16_UNORM = 0x37,
    _R16_UNORM = 0x38,
    _R16_UINT = 0x39,
    _R16_SNORM = 0x3a,
    _R16_SINT = 0x3b,
    _R8_TYPELESS = 0x3c,
    _R8_UNORM = 0x3d,
    _R8_UINT = 0x3e,
    _R8_SNORM = 0x3f,
    _R8_SINT = 0x40,
    _A8_UNORM = 0x41,
    _R1_UNORM = 0x42,
    _R9G9B9E5_SHAREDEXP = 0x43,
    _R8G8_B8G8_UNORM = 0x44,
    _G8R8_G8B8_UNORM = 0x45,
    _BC1_TYPELESS = 0x46,
    _BC1_UNORM = 0x47,
    _BC1_UNORM_SRGB = 0x48,
    _BC2_TYPELESS = 0x49,
    _BC2_UNORM = 0x4a,
    _BC2_UNORM_SRGB = 0x4b,
    _BC3_TYPELESS = 0x4c,
    _BC3_UNORM = 0x4d,
    _BC3_UNORM_SRGB = 0x4e,
    _BC4_TYPELESS = 0x4f,
    _BC4_UNORM = 0x50,
    _BC4_SNORM = 0x51,
    _BC5_TYPELESS = 0x52,
    _BC5_UNORM = 0x53,
    _BC5_SNORM = 0x54,
    _B5G6R5_UNORM = 0x55,
    _B5G5R5A1_UNORM = 0x56,
    _B8G8R8A8_UNORM = 0x57,
    _B8G8R8X8_UNORM = 0x58,
    _R10G10B10_XR_BIAS_A2_UNORM = 0x59,
    _B8G8R8A8_TYPELESS = 0x5a,
    _B8G8R8A8_UNORM_SRGB = 0x5b,
    _B8G8R8X8_TYPELESS = 0x5c,
    _B8G8R8X8_UNORM_SRGB = 0x5d,
    _BC6H_TYPELESS = 0x5e,
    _BC6H_UF16 = 0x5f,
    _BC6H_SF16 = 0x60,
    _BC7_TYPELESS = 0x61,
    _BC7_UNORM = 0x62,
    _BC7_UNORM_SRGB = 0x63,
    _AYUV = 0x64,
    _Y410 = 0x65,
    _Y416 = 0x66,
    _NV12 = 0x67,
    _P010 = 0x68,
    _P016 = 0x69,
    _420_OPAQUE = 0x6a,
    _YUY2 = 0x6b,
    _Y210 = 0x6c,
    _Y216 = 0x6d,
    _NV11 = 0x6e,
    _AI44 = 0x6f,
    _IA44 = 0x70,
    _P8 = 0x71,
    _A8P8 = 0x72,
    _B4G4R4A4_UNORM = 0x73,
    _P208 = 0x82,
    _V208 = 0x83,
    _V408 = 0x84,
    _FORCE_UINT = 0xffffffff,
}
