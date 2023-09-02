#pragma once

struct GLFWwindow;

namespace imgui {

    void InitializeImGUI(GLFWwindow* window);
    void Shutdown();

    void BeginFrame();
    void EndFrame();
}
