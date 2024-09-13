local treesitter = {
    "c",
    "lua",
    "vim",
    "cpp",
    "luau",
    "vimdoc"
}
local mason = {
    "clangd",
    "lua_ls",
    "cmake",
    "luau_lsp",
}
--platform specific lsps
if __LINUX__ then
    table.insert(mason, "bashls")
    table.insert(treesitter, "bash")
elseif __WINDOWS__ then
    table.insert(treesitter, "c_sharp")
    table.insert(mason, "csharp_ls")
end
return {
    treesitter = treesitter;
    mason = mason;
}
