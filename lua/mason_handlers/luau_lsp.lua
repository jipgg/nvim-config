return function()
    require("luau-lsp").setup({
        platform = {
            type = "roblox",
        },
        plugin = {
            enabled = true,
            port = 3667,
        },
        types = {
            --definition_files = {"c:/RobloxTypeDefinitions/globalTypes.PluginSecurity.d.luau"},
            --documentation_files = {"c:/RobloxTypeDefinitions/api-docs.json"},
            roblox_security_level = "PluginSecurity"
        },
        server = {
            settings = {
                ["luau-lsp"] = {
                    diagnostics = {
                        strictDatamodelTypes = false,
                    },
                    completion = {
                        imports = {
                          suggestServices = true,
                            suggestRequires = false,
                            enabled = true,
                        },
                    },
                },
            },
        },
    })
end
