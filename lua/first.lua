local sys = vim.uv.os_uname().sysname
__WINDOWS__ = (sys == "Windows_NT") and true or nil
__LINUX__ = (sys == "Linux") and true or nil
__MACOS__ = (sys == "Darwin") and true or nil
