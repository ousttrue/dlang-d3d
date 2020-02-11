module glb;

class ByteReader
{
    immutable ubyte[] m_bytes;
    int m_pos = 0;

    this(const ubyte[] bytes)
    {
        m_bytes = cast(immutable ubyte[]) bytes;
    }

    int read_int32()
    {
        auto value = *(cast(int*)(m_bytes.ptr + m_pos));
        m_pos += 4;
        return value;
    }

    immutable(ubyte)[] read_bytes(int length)
    {
        auto end = m_pos + length;
        if (end > m_bytes.length)
        {
            throw new Exception("out of range");
        }
        auto value = m_bytes[m_pos .. end];
        m_pos = end;
        return value;
    }
}

enum GlbChunkType
{
    Unknown = 0,
    Json = 0x4E4F534A,
    Bin = 0x004E4942,
}

/// https://github.com/KhronosGroup/glTF/blob/master/specification/2.0/README.md#glb-file-format-specification
struct Glb
{
    immutable(ubyte)[] json;
    immutable(ubyte)[] bin;

    static Glb parse(const ubyte[] bytes)
    {
        auto reader = new ByteReader(bytes);
        immutable magic = reader.read_int32();
        if (magic != 0x46546C67)
        {
            return Glb();
        }

        immutable glbVersion = reader.read_int32();
        if (glbVersion != 2)
        {
            return Glb();
        }

        immutable(ubyte)[] json_data;
        immutable(ubyte)[] bin_data;

        auto length = reader.read_int32() - 12;
        while (length > 0)
        {
            immutable chunk_length = reader.read_int32();
            length -= 4;
            immutable chunk_type = cast(GlbChunkType) reader.read_int32();
            length -= 4;
            immutable chunk_data = reader.read_bytes(chunk_length);
            length -= chunk_length;
            if (length < 0)
            {
                throw new Exception("out of range");
            }

            switch (chunk_type)
            {
            case GlbChunkType.Json:
                if (json_data)
                {
                    throw new Exception("duplicated json chunk");
                }
                json_data = chunk_data;
                break;

            case GlbChunkType.Bin:
                if (bin_data)
                {
                    throw new Exception("duplicated bin chunk");
                }
                bin_data = chunk_data;
                break;

            default:
                throw new Exception("unknown");
            }
        }

        return Glb(json_data, bin_data);
    }
}
