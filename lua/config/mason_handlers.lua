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
                            --includeDependents = true,
                            --workspace = true,
                        },
                        require = {
                            --mode = "relativeToWorkspaceRoot",
                            directoryAliases = require"luau-lsp".aliases();
                        },
                    }
                }
            }
        }
    end,
    lua_ls = function()
        local t = {}
        if __WINDOWS__ then
            t.root_dir = function()
                return vim.fn.getcwd() -- hacky patch for not finding the correct working directory on windows
            end
        end
        lspconfig.lua_ls.setup(t)
    end,
    function(server_name) -- default handlers
        lspconfig[server_name].setup({})
    end,
}
