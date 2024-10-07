local function win_root_dir()-- monkey patch, cons are that the root dir needs to be cd'd to before lsp works
    return vim.fn.getcwd();
end
local lspconfig = require "lspconfig"
return {
    zls = function ()
        lspconfig.zls.setup{
        }
    end,
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
            t.root_dir = win_root_dir;
        end
        lspconfig.lua_ls.setup(t)
    end,
    sqlls = function()
        local t = {}
        if __WINDOWS__ then
            t.root_dir = win_root_dir;
            lspconfig.sqlls.setup(t);
        end
    end,
    function(server_name) -- default handlers
        lspconfig[server_name].setup({})
    end,
}
