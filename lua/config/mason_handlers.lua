local lspconfig = require "lspconfig"
return {
    clangd = function()
        lspconfig.clangd.setup {
            cmd = {"clangd", "-header-insertion=never"},
            settings = {
                ["clangd"] = {
                    completion = {style = "detailed"},
                }
            }
        }
    end,
    luau_lsp = function()
        require('luau-lsp').setup {
            platform = {
                type = "standard",
            },
            server = {
                settings = {
                    ['luau-lsp'] = {
                        diagnostics = {
                            strictDatamodelTypes = true,
                        }
                    }
                }
            }
        }
    end,
    neocmake = function()
        --Enable (broadcasting) snippet capability for completion
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        require'lspconfig'.neocmake.setup {
            capabilities = capabilities,
        }
    end,
    lua_ls = function()
        local t = {}
        if __WINDOWS__ then t.root_dir = function() return vim.fn.getcwd() end end
        lspconfig.lua_ls.setup(t)
    end,
    function(server_name) -- default handlers
        lspconfig[server_name].setup({})
    end,
}
