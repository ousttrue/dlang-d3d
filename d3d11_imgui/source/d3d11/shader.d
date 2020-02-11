module d3d11.shader;

import core.sys.windows.winerror;
import core.sys.windows.windef;
import std.string;
import std.conv;
import std.experimental.logger;
import windowskits;
import dvecmath;
import d3d11.dxgihelper;

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
        log(to!string(cast(char*) pErrorBlob.GetBufferPointer()));
        pErrorBlob.Release();
    }
    return hr;
}

class Shader
{
    private ID3D11VertexShader m_vs;
    private ID3D11PixelShader m_ps;
    private ID3D11InputLayout m_inputLayout;
    D3D11_INPUT_ELEMENT_DESC[] inputs;

    this()
    {
    }

    ~this()
    {
    }

    void setup(ID3D11DeviceContext pDeviceContext)
    {
        pDeviceContext.VSSetShader(m_vs, null, 0);
        pDeviceContext.PSSetShader(m_ps, null, 0);
        pDeviceContext.IASetInputLayout(m_inputLayout);
    }

    bool createVS(ID3D11Device pDevice, const string shaderSource, const string entryPoint = "VSMain")
    {
        ID3DBlob blob;
        auto hr = CompileShaderFromSource("VS", shaderSource.toStringz,
                cast(uint) shaderSource.length, entryPoint.toStringz, "vs_5_0", &blob);
        if (FAILED(hr))
            return false;
        hr = pDevice.CreateVertexShader(blob.GetBufferPointer(),
                blob.GetBufferSize(), NULL, &m_vs);
        if (FAILED(hr))
            return false;

        // vertex shader reflection
        ID3D11ShaderReflection pReflector;
        hr = D3DReflect(blob.GetBufferPointer(), blob.GetBufferSize(),
                ID3D11ShaderReflection.iidof, cast(void**)&pReflector);
        if (FAILED(hr))
            return false;

        D3D11_SHADER_DESC shaderdesc;
        hr = pReflector.GetDesc(&shaderdesc);
        if (FAILED(hr))
            return false;

        // Create InputLayout
        for (UINT i = 0; i < shaderdesc.InputParameters; ++i)
        {
            D3D11_SIGNATURE_PARAMETER_DESC sigdesc;
            pReflector.GetInputParameterDesc(i, &sigdesc);

            immutable format = GetDxgiFormat(sigdesc.ComponentType, sigdesc.Mask);

            D3D11_INPUT_ELEMENT_DESC input = {
                sigdesc.SemanticName, sigdesc.SemanticIndex, format, 0,
                    D3D11_APPEND_ALIGNED_ELEMENT, D3D11_INPUT_CLASSIFICATION._VERTEX_DATA, 0
            };
            inputs ~= input;
        }

        if (!inputs.empty())
        {
            hr = pDevice.CreateInputLayout(&inputs[0], cast(uint) inputs.length,
                    blob.GetBufferPointer(), blob.GetBufferSize(), &m_inputLayout);
            if (FAILED(hr))
                return false;
        }

        return true;
    }

    bool createPS(ID3D11Device pDevice, const string shaderSource, const string entryPoint = "PSMain")
    {
        ID3DBlob blob;
        auto hr = CompileShaderFromSource("PS", shaderSource.toStringz,
                cast(uint) shaderSource.length, entryPoint.toStringz, "ps_5_0", &blob);
        if (FAILED(hr))
            return false;
        hr = pDevice.CreatePixelShader(blob.GetBufferPointer(), blob.GetBufferSize(), NULL, &m_ps);
        if (FAILED(hr))
            return false;

        return true;
    }
}
