module renderer;
import core.sys.windows.windows;
import windowskits;
import std.stdio;
import std.datetime.systime;
import std.file;
import glb;
import gltf;
import std.json;
import std.conv;

struct float2
{
    float x;
    float y;
}

struct float3
{
    float x;
    float y;
    float z;
}

class Drawable
{
    string Name;

    const(float3)[] Positions;
    const(float3)[] Normals;
    const(float2)[] UVs;

    const(int)[] Indices;

    this(string name)
    {
        Name = name;
    }

    ~this()
    {
    }

    void Draw(ID3D11Device device, ID3D11DeviceContext context)
    {

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

class Renderer
{
    IDXGISwapChain m_swapchain;
    ID3D11Device m_device;
    ID3D11DeviceContext m_context;

    ID3D11RenderTargetView m_rtv;

    Drawable[] m_drawables;

    ~this()
    {
        if (m_rtv)
        {
            m_rtv.Release();
            m_rtv = null;
        }

        m_swapchain.Release();
        m_context.Release();
        m_device.Release();
    }

    bool initialize(HWND hwnd)
    {
        auto dtype = D3D_DRIVER_TYPE.D3D_DRIVER_TYPE_HARDWARE;
        UINT flags = 0;
        auto featureLevels = [
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_11_0,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_1,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_10_0,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_3,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_2,
            D3D_FEATURE_LEVEL.D3D_FEATURE_LEVEL_9_1,
        ];

        //UINT numFeatureLevels = sizeof(featureLevels) / sizeof(D3D_FEATURE_LEVEL);
        auto sdkVersion = D3D11_SDK_VERSION;
        D3D_FEATURE_LEVEL validFeatureLevel;

        DXGI_SWAP_CHAIN_DESC scDesc;
        scDesc.BufferCount = 1;
        scDesc.BufferDesc.Width = 0;
        scDesc.BufferDesc.Height = 0;
        scDesc.BufferDesc.Format = DXGI_FORMAT.DXGI_FORMAT_R8G8B8A8_UNORM_SRGB;
        scDesc.BufferDesc.RefreshRate.Numerator = 60;
        scDesc.BufferDesc.RefreshRate.Denominator = 1;
        scDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
        scDesc.OutputWindow = hwnd;
        scDesc.SampleDesc.Count = 1;
        scDesc.SampleDesc.Quality = 0;
        scDesc.Windowed = TRUE;

        HRESULT hr = D3D11CreateDeviceAndSwapChain(null, dtype, null, flags, featureLevels.ptr,
                cast(uint) featureLevels.length, sdkVersion, &scDesc,
                &m_swapchain, &m_device, &validFeatureLevel, &m_context);
        return hr == S_OK;
    }

    static immutable(ubyte)[] get_bytes(const glTF* parsed,
            immutable ubyte[] bin, const int* index)
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

    void load(wstring path)
    {
        writefln("load: %s", path);
        const bytes = read(path);

        const glb = Glb.parse(cast(ubyte[]) bytes);
        if (!glb.json || !glb.bin)
        {
            throw new Exception("fail to Glb.parse");
        }

        const json_str = (cast(immutable char*) glb.json.ptr)[0 .. glb.json.length];
        const json = parseJSON(json_str);
        glTF parsed = glTF.fromJSON(json);
        // writefln("%s", json.type);
        writefln("%s", json["asset"].object["generator"]);

        foreach (mesh; parsed.meshes)
        {
            auto d = new Drawable(mesh.name);
            foreach (prim; mesh.primitives)
            {
                const positions = get_bytes(&parsed, glb.bin, "POSITION" in prim.attributes)
                    .range_cast!float3;
                d.Positions = positions;

                const normals = get_bytes(&parsed, glb.bin, "NORMAL" in prim.attributes)
                    .range_cast!float3;
                if (normals.length)
                {
                    d.Normals = normals;
                }

                const uvs = get_bytes(&parsed, glb.bin, "TEXCOORD_0" in prim.attributes)
                    .range_cast!float2;
                if (uvs.length)
                {
                    d.UVs = uvs;
                }

                auto indices = get_indices(&parsed, glb.bin, prim.indices.get);
                if (indices)
                {
                    d.Indices = indices;
                }
            }
            m_drawables ~= d;
        }
    }

    void draw(SysTime now)
    {
        if (!m_rtv)
        {
            ID3D11Texture2D backbuffer;
            auto hr = m_swapchain.GetBuffer(0, &backbuffer.iidof, cast(void**)&backbuffer);
            if (hr != S_OK)
            {
                throw new Exception("fail to GetBuffer");
            }
            scope (exit)
                backbuffer.Release();

            hr = m_device.CreateRenderTargetView(backbuffer, null, &m_rtv);
            if (hr != S_OK)
            {
                throw new Exception("fail to CreateRenderTargetView");
            }
        }
        float[4] clearColor = [0.0f, 0.0f, 1.0f, 0.0f];
        m_context.ClearRenderTargetView(m_rtv, clearColor);

        foreach (d; m_drawables)
        {
            d.Draw(m_device, m_context);
        }

        // context.Flush();

        m_swapchain.Present(0, 0);
    }
}
