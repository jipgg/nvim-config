
return function()
    require("lspconfig").lua_ls.setup {
        root_dir = function(fname)
            return vim.fn.getcwd()
        end
    }
end
