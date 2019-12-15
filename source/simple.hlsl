struct VSInput
{
    float3 position: POSITION;
};

struct PSInput
{
    float4 position: SV_POSITION;
}; 

PSInput VSMain(VSInput input) 
{
    PSInput output;
    output.position = float4(input.position.xy, 0, 1);
    return output;
}

float4 PSMain(PSInput input): SV_TARGET
{
    return float4(1, 1, 1, 1); // white
}
