return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  opts = {
        keymaps = {
            ["<leader>o"] = "actions.select",
            ["<leader>p"] = "actions.parent",
            ["<leader>h"] = "actions.toggle_hidden",
            ["<leader>e"] = "actions.open_external",
            ["<leader>c"] = "actions.open_cwd",
            ["q"] = "actions.close",
        },
        view_options = {
            show_hidden = false,
        }
    },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
