local _, os = pcall(vim.uv.os_uname)
local sys = nil
if os then
    sys = os.sysname
end
__WINDOWS__ = (sys == "Windows_NT") and true or nil
__LINUX__ = (sys == "Linux") and true or nil
__MACOS__ = (sys == "Darwin") and true or nil

__MASON_ENSURE_INSTALLED__ = nil --[[
Mason depends on specific package managers for specific LSP installations.
Had some weird issues to stop it from trying to install failed installations
even when removing them from the ensure_installed table afterwards.
Set it to true after evaluating the LSPs it will install in ./lua/config/ensure_installed.lua.
Or keep it off and install LSPs manually with :Mason
]]

__VSCODE_NEOVIM_EXT__ = vim.g.vscode --For when working with VSCodium Neovim extension
--vim.g.zig_fmt_autosave = false
