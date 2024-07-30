return {
    lua_ls = require "mason_handlers.lua_ls",
    luau_lsp = require "mason_handlers.luau_lsp",
    clangd = require "mason_handlers.clangd",
    --rust_analyzer = require "mason_handlers.rust_analyzer",
    require"mason_handlers.default"
}
