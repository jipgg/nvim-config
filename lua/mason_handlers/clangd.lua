return function ()
    require"lspconfig".clangd.setup {
        settings = {
            ["clangd"] = {
                completion = {
                    style = "detailed",
                }
            }
        }
    }
end
