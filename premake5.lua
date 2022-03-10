project "D3D12MemoryAllocator"
	kind "StaticLib"
	language "C++"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/D3D12MemAlloc.h",
		"src/D3D12MemAlloc.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++latest"
		staticruntime "on"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++latest"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
