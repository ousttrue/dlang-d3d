module dvecmath.float3;

unittest
{

    auto a = float3(1, 2, 3);
    auto b = float3(2, 3, 4);

    assert(a + b == float3(3, 5, 7));
    assert(a - b == float3(-1, -1, -1));
    assert(a.dot(b) == 20);
    assert(a.cross(b) == float3(-1, 2, -1));
    assert(float3.ex == float3(1, 0, 0));
}

struct float3
{
    float x;
    float y;
    float z;

    float3 opBinary(string op)(in float3 rhs) const if (op == "+" || op == "-")
    {
        return float3(mixin("x" ~ op ~ "rhs.x"), mixin("y" ~ op ~ "rhs.y"), mixin("z" ~ op ~ "rhs.z"));
    }

    float dot(in float3 rhs) const
    {
        return x * rhs.x + y * rhs.y + z * rhs.z;
    }

    float3 cross(in float3 rhs) const
    {
        return float3(y * rhs.z - z * rhs.y, z * rhs.x - x * rhs.z, x * rhs.y - y * rhs.x);
    }

    @property static ex = float3(1, 0, 0);
    @property static ey = float3(0, 1, 0);
    @property static ez = float3(0, 0, 1);
}
