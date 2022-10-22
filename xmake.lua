add_rules("mode.release")

target("glfw3")
    set_kind("static")
    add_files("src/*.c")
    add_cflags("-g", "-DNDEBUG", "-DUNICODE", "-D_UNICODE")
    if is_plat("windows") then
        add_defines("_GLFW_WIN32")
    elseif is_plat("linux") then
        add_defines("_GLFW_X11")
    elseif is_plat("macosx") then
        add_defines("_GLFW_COCOA")
    end