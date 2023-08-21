project "ImGUI"
	kind "StaticLib"
	language "C++"
	systemversion "latest"
	cppdialect "C++20"
	staticruntime "on"

	targetdir ("../../bin/" .. outputdir .. "-%{prj.name}")
	objdir ("../../bin-int/" .. outputdir .. "-%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_tables.cpp",
		"imgui_demo.cpp",
		"backends/imgui_impl_opengl3.h",
		"backends/imgui_impl_opengl3.cpp",
		"backends/imgui_impl_glfw.h",
		"backends/imgui_impl_glfw.cpp"
	}

	includedirs
	{
		"%{IncludeDir.GLFW}",
		"%{IncludeDir.ImGUI}"
	}

	filter "configurations:Logging"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
