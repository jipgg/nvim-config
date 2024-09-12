local function setup()
    local tree = require'nvim-tree'

    local GLOBAL_WIDTH = vim.api.nvim_list_uis()[1].width
    local GLOBAL_HEIGHT = vim.api.nvim_list_uis()[1].height
    local WIDTH = 70
    local HEIGHT = 25

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
            float = { enable = true, open_win_config = {
                --relative = "cursor",
                --border = "none",
                width = WIDTH,
                height = HEIGHT,
                relative = "editor",
                col = (GLOBAL_WIDTH - WIDTH) * .5,
                row = (GLOBAL_HEIGHT - HEIGHT) * .5,
                style = 'minimal',
            }}
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
