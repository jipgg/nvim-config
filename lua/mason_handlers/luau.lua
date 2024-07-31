local rbxDefFiles = "--definitions=C:/RobloxTypeDefinitions/globalTypes.PluginSecurity.d.luau"
local docFiles = "--docs=C:/RobloxTypeDefinitions/api-docs.json"

return function ()
    require"lspconfig".luau_lsp.setup {
        root_dir = function ()
            return vim.fn.getcwd()
        end,
        cmd = {"luau-lsp", "lsp", rbxDefFiles, docFiles},
        filetypes = {"luau"},
        settings = {
            ["luau-lsp"] = {
                plugin = {
                    enabled = true,
                    maximumRequestBodySize = "3mb",
                    port = 3667,
                },
                platform = {
                    type = "roblox"
                },
                types = {
                    --definitionFiles = {"c:/RobloxTypeDefinitions/globalTypes.PluginSecurity.d.luau"},
                    --documentationFiles = {"c:/RobloxTypeDefinitions/api-docs.json"},
                    robloxSecurityLevel = "PluginSecurity"
                },
                completion = {
                    imports = {
                        suggestRequires = true,
                        suggestServices = true,
                        enabled = true,
                    },
                },
                diagnostics = {
                    strictDatamodelTypes = true,
                },
            }
        }
    }
end
