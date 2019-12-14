module dvecmath.float4;

struct float4
{
    float x;
    float y;
    float z;
    float w;

    this(float _x, float _y, float _z, float _w)
    {
        x = _x;
        y = _y;
        z = _z;
        w = _w;
    }
}
