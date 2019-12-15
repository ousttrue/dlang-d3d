module gltfhelper;
import gltf;

static immutable(T)[] range_cast(T)(immutable ubyte[] bytes)
{
    return (cast(immutable T*) bytes.ptr)[0 .. bytes.length / T.sizeof];
}

static int count(gltf.AccessorType type)
{
    final switch (type)
    {
    case gltf.AccessorType.SCALAR:
        return 1;

    case gltf.AccessorType.VEC2:
        return 2;

    case gltf.AccessorType.VEC3:
        return 3;

    case gltf.AccessorType.VEC4:
    case gltf.AccessorType.MAT2:
        return 4;
    case gltf.AccessorType.MAT3:
        return 9;
    case gltf.AccessorType.MAT4:
        return 16;
    }
}

static int length(gltf.AccessorComponentType componentType)
{
    final switch (componentType)
    {
    case gltf.AccessorComponentType.BYTE:
    case gltf.AccessorComponentType.UNSIGNED_BYTE:
        return 1;

    case gltf.AccessorComponentType.SHORT:
    case gltf.AccessorComponentType.UNSIGNED_SHORT:
        return 2;

    case gltf.AccessorComponentType.FLOAT:
    case gltf.AccessorComponentType.UNSIGNED_INT:
        return 4;
    }
}

static int stride(const gltf.Accessor accessor)
{
    return accessor.componentType.length * accessor.type.count;
}

static const(int)[] bytes_to_indices(immutable(ubyte)[] bytes, const gltf.Accessor accessor)
{
    if (accessor.type != gltf.AccessorType.SCALAR)
    {
        throw new Exception("not SCALAR");
    }

    if (accessor.componentType == gltf.AccessorComponentType.UNSIGNED_INT)
    {
        return bytes.range_cast!int;
    }

    int[] indices;
    indices.length = accessor.count.get;
    auto p = bytes.ptr;

    switch (accessor.componentType)
    {
    case AccessorComponentType.UNSIGNED_BYTE:
        for (int i = 0; i < indices.length; ++i, ++p)
        {
            indices[i] = *p;
        }
        break;

    case AccessorComponentType.UNSIGNED_SHORT:
        for (int i = 0; i < indices.length; ++i, p += 2)
        {
            indices[i] = *(cast(immutable ushort*) p);
        }
        break;

    default:
        throw new Exception("unknown type");
    }
    return indices;
}

static immutable(ubyte)[] get_bytes(const glTF* parsed, immutable ubyte[] bin, const int* index)
{
    if (!index)
    {
        return [];
    }

    const accessor = parsed.accessors[*index];
    if (accessor.bufferView.isNull)
    {
        return [];
    }

    const view = parsed.bufferViews[accessor.bufferView.get];
    if (view.buffer.isNull)
    {
        return [];
    }

    // auto buffer = parsed.buffers[view.buffer.get];
    auto begin = view.byteOffset.get(0) + accessor.byteOffset.get(0);
    auto end = begin + accessor.stride * accessor.count;
    return bin[begin .. end];
}

const(int)[] get_indices(const glTF* parsed, immutable ubyte[] bin, int index)
{
    auto bytes = get_bytes(parsed, bin, &index);
    return bytes.bytes_to_indices(parsed.accessors[index]);
}
