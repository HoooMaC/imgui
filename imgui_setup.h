#pragma once

struct GLFWwindow;

namespace imgui {

    void InitializeImGUI(GLFWwindow* window);
    void Shutdown();

    void BeginFrame();
    void EndFrame();

    int ImFormatString(char* buf, size_t buf_size, const char* fmt, ...);

}
