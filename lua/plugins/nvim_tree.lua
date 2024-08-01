local function setup()

    local tree = require'nvim-tree'
    vim.keymap.set("n", Keybind.NvimTree.Focus, vim.cmd.NvimTreeFocus)
    vim.keymap.set("n", Keybind.NvimTree.Close, vim.cmd.NvimTreeClose)
    tree.setup {
	    filters = { dotfiles = true },
	    renderer = {
            indent_width = 4,
            highlight_opened_files = "name",
	    	full_name = false,
            root_folder_label = ":~:t",
            indent_markers = {
                enable = false,
                inline_arrows = false,
            },
	    },
        respect_buf_cwd = true,
        update_focused_file = {
            enable = true,
            update_cwd = true,
        },
        view = {
            side = "right",
            width = 40;
            --[[
            float = { enable = true, open_win_config = {
                relative = "cursor",
                border = "none",
                row = 1,
                col = 1,
                width = 40,
                height = 15,
                style = 'minimal',
            }}]]
        },
    }
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = setup;
}
