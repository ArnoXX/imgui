project "imgui"
    kind "StaticLib"
    language "C++"

    location "%{wks.location}/Vendor/imgui"
    staticruntime(srunt)
    files {
        "%{prj.location}/*.cpp",
        "%{prj.location}/*.h",
        "%{prj.location}/backends/*.cpp",
        "%{prj.location}/backends/*.h",
        "%{prj.location}/misc/debuggers/imgui.natstepfilter",
        "%{prj.location}/misc/debuggers/imgui.natvis",
        "%{prj.location}/misc/cpp/imgui_stdlib.*"
    }

    includedirs { "%{prj.location}/", "%{prj.location}/backends", "%{prj.location}/examples/libs/glfw/include" }
    targetdir ( "%{wks.location}/lib/" )
    objdir ( "%{wks.location}/obj/%{cfg.buildcfg}" )


    filter { "configurations:Debug" }
        runtime "Debug"
    filter { "configurations:Release" }
        runtime "Release"
