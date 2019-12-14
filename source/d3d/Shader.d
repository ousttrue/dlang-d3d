module d3d.Shader;

import windowskits;
import dvecmath;
import core.sys.windows.winerror;
import core.sys.windows.windef;
import std.string;

struct Vertex
{
    float4 pos;
    float4 color;
    float2 tex;
}

static DXGI_FORMAT GetDxgiFormat(D3D_REGISTER_COMPONENT_TYPE type, BYTE mask)
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

class InputAssemblerSource
{
    private ID3D11Buffer m_pVertexBuf;
    private ID3D11Buffer m_pIndexBuf;
    private int m_indices;

    bool Initialize(ID3D11Device pDevice, Vertex[] vertices, int[] indices)
    {
        if (!createVB(pDevice, vertices))
        {
            return false;
        }

        if (!createIB(pDevice, indices))
        {
            return false;
        }
        return true;
    }

    void Draw(ID3D11DeviceContext pDeviceContext)
    {
        // set vertexbuffer
        auto pBufferTbl = [m_pVertexBuf];
        auto SizeTbl = [cast(uint) Vertex.sizeof];
        auto OffsetTbl = [cast(uint) 0];
        pDeviceContext.IASetVertexBuffers(cast(uint) 0, cast(uint) 1,
                pBufferTbl.ptr, SizeTbl.ptr, OffsetTbl.ptr);

        // set indexbuffer
        pDeviceContext.IASetIndexBuffer(m_pIndexBuf, DXGI_FORMAT._R32_UINT, 0);

        pDeviceContext.IASetPrimitiveTopology(
                D3D11_PRIMITIVE_TOPOLOGY.D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);

        pDeviceContext.DrawIndexed(m_indices // index count
                , 0, 0);
    }

    private bool createVB(ID3D11Device pDevice, Vertex[] vertices)
    {
        D3D11_BUFFER_DESC vdesc;
        vdesc.ByteWidth = cast(uint)(vertices.length * Vertex.sizeof);
        vdesc.Usage = D3D11_USAGE._DEFAULT;
        vdesc.BindFlags = D3D11_BIND_FLAG._VERTEX_BUFFER;
        vdesc.CPUAccessFlags = 0;

        D3D11_SUBRESOURCE_DATA vertexData;
        vertexData.pSysMem = vertices.ptr;

        const hr = pDevice.CreateBuffer(&vdesc, &vertexData, &m_pVertexBuf);
        if (hr != S_OK)
        {
            return false;
        }

        return true;
    }

    bool createIB(ID3D11Device pDevice, int[] indices)
    {
        m_indices = cast(int)(indices.length);

        D3D11_BUFFER_DESC idesc;
        idesc.ByteWidth = cast(uint)(indices.length * int.sizeof);
        idesc.Usage = D3D11_USAGE._DEFAULT;
        idesc.BindFlags = D3D11_BIND_FLAG._INDEX_BUFFER;
        idesc.CPUAccessFlags = 0;

        D3D11_SUBRESOURCE_DATA indexData;
        indexData.pSysMem = indices.ptr;

        const hr = pDevice.CreateBuffer(&idesc, &indexData, &m_pIndexBuf);
        if (hr != S_OK)
        {
            return false;
        }

        return true;
    }
}

HRESULT CompileShaderFromSource(const CHAR* szFileName, const CHAR* source,
        int sourceSize, LPCSTR szEntryPoint, LPCSTR szShaderModel, ID3D10Blob* ppBlobOut)
{
    DWORD dwShaderFlags = D3DCOMPILE_ENABLE_STRICTNESS;
    debug
    {
        dwShaderFlags |= D3DCOMPILE_DEBUG;
    }
    else
    {
        dwShaderFlags |= D3DCOMPILE_OPTIMIZATION_LEVEL3;
    }

    ID3DBlob pErrorBlob;
    auto hr = D3DCompile(source, sourceSize, szFileName, NULL, D3D_COMPILE_STANDARD_FILE_INCLUDE,
            szEntryPoint, szShaderModel, dwShaderFlags, 0, ppBlobOut, &pErrorBlob);
    if (pErrorBlob)
    {
        // OutputDebugStringA((char * ) pErrorBlob -  > GetBufferPointer());
        pErrorBlob.Release();
    }
    return hr;
}

class Shader
{
    private ID3D11VertexShader m_pVsh;
    private ID3D11PixelShader m_pPsh;
    private ID3D11InputLayout m_pInputLayout;
    InputAssemblerSource m_IASource = new InputAssemblerSource();

    this()
    {
    }

    ~this()
    {
    }

    bool Initialize(ID3D11Device pDevice, const string shaderSource, Vertex[] vertices,
            int[] indices)
    {
        if (!createShaders(pDevice, shaderSource, "vsMain", "psMain"))
        {
            return false;
        }

        if (!m_IASource.Initialize(pDevice, vertices, indices))
        {
            return false;
        }

        return true;
    }

    void Draw(ID3D11DeviceContext pDeviceContext)
    {
        // setup pipeline
        pDeviceContext.VSSetShader(m_pVsh, null, 0);
        pDeviceContext.PSSetShader(m_pPsh, null, 0);
        pDeviceContext.IASetInputLayout(m_pInputLayout);
        // draw
        m_IASource.Draw(pDeviceContext);
    }

    private bool createShaders(ID3D11Device pDevice, const string shaderSource,
            const string vsFunc, const string psFunc)
    {
        // vertex shader
        {
            ID3DBlob vblob;
            auto hr = CompileShaderFromSource("SOURCE", shaderSource.toStringz,
                    cast(uint) shaderSource.length, vsFunc.toStringz, "vs_4_0_level_9_1", &vblob);
            if (FAILED(hr))
                return false;
            hr = pDevice.CreateVertexShader(vblob.GetBufferPointer(),
                    vblob.GetBufferSize(), NULL, &m_pVsh);
            if (FAILED(hr))
                return false;

            // vertex shader reflection
            ID3D11ShaderReflection pReflector;
            hr = D3DReflect(vblob.GetBufferPointer(), vblob.GetBufferSize(),
                    &ID3D11ShaderReflection.iidof, cast(void**)&pReflector);
            if (FAILED(hr))
                return false;

            D3D11_SHADER_DESC shaderdesc;
            pReflector.GetDesc(&shaderdesc);

            // Create InputLayout
            D3D11_INPUT_ELEMENT_DESC[] vbElement;
            for (UINT i = 0; i < shaderdesc.InputParameters; ++i)
            {
                D3D11_SIGNATURE_PARAMETER_DESC sigdesc;
                pReflector.GetInputParameterDesc(i, &sigdesc);

                auto format = GetDxgiFormat(sigdesc.ComponentType, sigdesc.Mask);

                D3D11_INPUT_ELEMENT_DESC eledesc = {
                    sigdesc.SemanticName, sigdesc.SemanticIndex, format, 0 // hardcoding
                    ,
                        D3D11_APPEND_ALIGNED_ELEMENT // hardcoding
                        , D3D11_INPUT_CLASSIFICATION._PER_VERTEX_DATA // hardcoding
                        , 0 // hardcoding

                
                };
                vbElement~=eledesc;
            }

            if (!vbElement.empty())
            {
                hr = pDevice.CreateInputLayout(&vbElement[0], cast(uint)vbElement.length,
                        vblob.GetBufferPointer(), vblob.GetBufferSize(), &m_pInputLayout);
                if (FAILED(hr))
                    return false;
            }
        }

        // pixel shader
        {
            ID3DBlob pblob;
            auto hr = CompileShaderFromSource("SOURCE", shaderSource.toStringz,
                    cast(uint) shaderSource.length, psFunc.toStringz, "ps_4_0_level_9_1", &pblob);
            if (FAILED(hr))
                return false;
            hr = pDevice.CreatePixelShader(pblob.GetBufferPointer(),
                    pblob.GetBufferSize(), NULL, &m_pPsh);
            if (FAILED(hr))
                return false;

            // pixel shader reflection
            ID3D11ShaderReflection pReflector;
            hr = D3DReflect(pblob.GetBufferPointer(), pblob.GetBufferSize(),
                    &ID3D11ShaderReflection.iidof, cast(void**)&pReflector);
            if (FAILED(hr))
                return false;
        }

        return true;
    }
}
