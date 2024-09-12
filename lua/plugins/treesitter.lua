
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup{
          ensure_installed = { "c", "lua", "vim", "cpp", "c_sharp", "luau" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        }
    end
}
