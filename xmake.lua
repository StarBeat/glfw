add_rules("mode.release")

target("glfw3")
    set_kind("static")
    add_files("src/*.c")
    add_defines("WIN32", "_WINDOWS", "NDEBUG", "_GLFW_WIN32", "UNICODE", "_UNICODE")