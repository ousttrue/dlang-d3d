// This source code was generated by regenerator
module imgui.imgui_impl_dx11;
import imgui.imgui;
struct ID3D11Device;
struct ID3D11DeviceContext;
extern(C++) {
extern(C++) bool ImGui_ImplDX11_Init(ID3D11Device* device, ID3D11DeviceContext* device_context);
extern(C++) void ImGui_ImplDX11_RenderDrawData(ImDrawData* draw_data);
extern(C++) void ImGui_ImplDX11_InvalidateDeviceObjects();
extern(C++) void ImGui_ImplDX11_NewFrame();
extern(C++) void ImGui_ImplDX11_Shutdown();
extern(C++) bool ImGui_ImplDX11_CreateDeviceObjects();
} // 
