module d3d.InterleavedBuffer;

class InterleavedBuffer
{
    ubyte[] Buffer;
    int Stride;
    int VertexCount;

    this(int stride, int count)
    {
        Buffer.length = stride * count;
        Stride = stride;
        VertexCount = cast(int)Buffer.length / stride;
    }

    void Set(ubyte[] values, int stride, int offset)
    {
        for (int pos = 0; pos < values.length; pos += stride, offset += Stride)
        {
            Buffer[offset .. offset + stride] = values[pos .. pos + stride];
        }
    }

    void Set(T)(T[] values, int offset)
    {
        int src = 0;
        for (int i = 0; i < values.length; ++i)
        {
            (cast(T[]) m_buffer[offset .. offset + T.sizeof])[0] = values[i];
            src += T.sizeof;
            offset += Stride;
        }
    }
}

struct VertexAttribute
{
    ubyte[] Value;
    int ElementSize;

    this(ubyte[] value, int elementSize)
    {
        Value = value;
        ElementSize = elementSize;
    }

    static VertexAttribute Create(T)(T[] values)
    {
        return new VertexAttribute(values.dup, T.sizeof);
    }
}
