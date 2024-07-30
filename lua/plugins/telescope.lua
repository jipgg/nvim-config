local builtin = require('telescope.builtin')
local utils = require('telescope.utils')
local set = vim.keymap.set
local function GrepString()
    builtin.grep_string{search = vim.fn.input("Find Word: "), cwd = utils.buffer_dir(), grep_open_files = true}
end
set('n', Keybind.Telescope.FindFiles, builtin.find_files)
set('n', Keybind.Telescope.GitFiles, builtin.git_files)
set('n', Keybind.Telescope.GrepString, GrepString)
set('n', Keybind.Telescope.LiveGrep, builtin.live_grep)
set('n', Keybind.Telescope.Buffer, builtin.buffers)
set('n', Keybind.Telescope.CurrentBufferFuzzyFind, builtin.current_buffer_fuzzy_find)

local telescope = require "telescope"
local defaults = {
    layout_strategy = "center",
    layout_config = {
        horizontal = {size = {width = "10%", height = "10%"} },
        vertical = {size = {width = "10%", height = "10%"} },
    },
}
--setup
telescope.setup {
    defaults = defaults;
}
--loader
return {
	'nvim-telescope/telescope.nvim',
  	dependencies = { 'nvim-lua/plenary.nvim' }
}
