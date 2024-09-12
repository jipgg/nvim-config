local lspconfig = require "lspconfig"
return {
    clangd = function()
        lspconfig.clangd.setup {
            --cmd = {"clangd", "-header-insertion=never"},
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
    function(server_name) -- default handlers
        lspconfig[server_name].setup({})
    end,
}
