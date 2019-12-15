module d3d11.dxgihelper;
import windowskits;
import core.sys.windows.windef;

DXGI_FORMAT GetDxgiFormat(D3D_REGISTER_COMPONENT_TYPE type, BYTE mask)
{
    if ((mask & 0x0F) == 0x0F)
    {
        // xyzw
        switch (type)
        {
        case D3D_REGISTER_COMPONENT_TYPE._FLOAT32:
            return DXGI_FORMAT._R32G32B32A32_FLOAT;

        default:
            break;
        }
    }

    if ((mask & 0x07) == 0x07)
    {
        // xyz
        switch (type)
        {
        case D3D_REGISTER_COMPONENT_TYPE._FLOAT32:
            return DXGI_FORMAT._R32G32B32_FLOAT;

        default:
            break;
        }
    }

    if ((mask & 0x03) == 0x03)
    {
        // xy
        switch (type)
        {
        case D3D_REGISTER_COMPONENT_TYPE._FLOAT32:
            return DXGI_FORMAT._R32G32_FLOAT;

        default:
            break;
        }
    }

    if ((mask & 0x1) == 0x1)
    {
        // x
        switch (type)
        {
        case D3D_REGISTER_COMPONENT_TYPE._FLOAT32:
            return DXGI_FORMAT._R32_FLOAT;

        default:
            break;
        }
    }

    return DXGI_FORMAT._UNKNOWN;
}

int byteLength(DXGI_FORMAT format)
{
    switch (format)
    {
    case DXGI_FORMAT._R32_FLOAT:
        return 4;
    case DXGI_FORMAT._R32G32_FLOAT:
        return 8;
    case DXGI_FORMAT._R32G32B32_FLOAT:
        return 12;
    case DXGI_FORMAT._R32G32B32A32_FLOAT:
        return 16;
    default:
        break;
    }

    return 0;
}
