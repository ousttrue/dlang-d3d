module d3d11.vertexbuffer;
import windowskits;
import dvecmath;
import core.sys.windows.winerror;

class VertexBuffer
{
    private ID3D11Buffer m_pVertexBuf;
    private uint m_vertexCount;
    private uint m_stride;

    private ID3D11Buffer m_pIndexBuf;
    private DXGI_FORMAT m_indexFormat;
    private uint m_indexCount;

    D3D11_PRIMITIVE_TOPOLOGY m_topology = D3D11_PRIMITIVE_TOPOLOGY._TRIANGLELIST;

    ~this()
    {
        if (m_pVertexBuf)
        {
            m_pVertexBuf.Release();
            m_pVertexBuf = null;
        }
        if (m_pIndexBuf)
        {
            m_pIndexBuf.Release();
            m_pIndexBuf = null;
        }
    }

    bool setVertices(ID3D11Device pDevice, ubyte[] bytes, uint count)
    {
        D3D11_BUFFER_DESC vdesc;
        vdesc.ByteWidth = cast(uint)(bytes.length);
        vdesc.Usage = D3D11_USAGE._DEFAULT;
        vdesc.BindFlags = D3D11_BIND_FLAG._VERTEX_BUFFER;
        vdesc.CPUAccessFlags = 0;

        D3D11_SUBRESOURCE_DATA vertexData;
        vertexData.pSysMem = bytes.ptr;
        const hr = pDevice.CreateBuffer(&vdesc, &vertexData, &m_pVertexBuf);
        if (hr != S_OK)
        {
            return false;
        }

        m_vertexCount = count;
        m_stride = cast(uint) bytes.length / count;
        return true;
    }

    bool setIndices(ID3D11Device pDevice, ubyte[] bytes, uint count)
    {
        switch (bytes.length / count)
        {
        case 4:
            m_indexFormat = DXGI_FORMAT._R32_UINT;
            break;

        default:
            return false;
        }

        D3D11_BUFFER_DESC idesc;
        idesc.ByteWidth = cast(uint)(bytes.length);
        idesc.Usage = D3D11_USAGE._DEFAULT;
        idesc.BindFlags = D3D11_BIND_FLAG._INDEX_BUFFER;
        idesc.CPUAccessFlags = 0;

        D3D11_SUBRESOURCE_DATA indexData;
        indexData.pSysMem = bytes.ptr;
        const hr = pDevice.CreateBuffer(&idesc, &indexData, &m_pIndexBuf);
        if (hr != S_OK)
        {
            return false;
        }

        m_indexCount = count;
        return true;
    }

    void draw(ID3D11DeviceContext pDeviceContext)
    {
        // set vertexbuffer
        auto pBufferTbl = [m_pVertexBuf];
        auto SizeTbl = [cast(uint) m_stride];
        auto OffsetTbl = [cast(uint) 0];
        pDeviceContext.IASetVertexBuffers(cast(uint) 0, cast(uint) 1,
                pBufferTbl.ptr, SizeTbl.ptr, OffsetTbl.ptr);

        // set indexbuffer
        pDeviceContext.IASetIndexBuffer(m_pIndexBuf, m_indexFormat, 0);

        pDeviceContext.IASetPrimitiveTopology(m_topology);

        pDeviceContext.DrawIndexed(m_indexCount, 0, 0);
    }
}
