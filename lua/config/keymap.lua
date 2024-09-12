local set = vim.keymap.set
-- @ nvim-tree
set("n", "<leader>i", vim.cmd.NvimTreeFocus)
set("n", "<leader>I", vim.cmd.NvimTreeClose)
set("n", "<leader>o", vim.cmd.ToggleTerm)
set("t", "<Esc>", vim.cmd.ToggleTerm)
-- @ telescope
local telescope_builtin = require('telescope.builtin')
set('n', "<leader>a", telescope_builtin.find_files)
set('n', "<leader>g", telescope_builtin.git_files)
set('n', "<leader>r", telescope_builtin.live_grep)
set('n', "<leader>n", telescope_builtin.buffers)
set('n', "<leader>f", telescope_builtin.current_buffer_fuzzy_find)
set('n', "<leader>b", telescope_builtin.diagnostics)
-- @ window motion leader
set('n', '<leader>w', '<C-w>') --window commands w-h-j-k-l-c
-- @ dap
local dap = require 'dap'
set('n', '<leader>dc', dap.continue)
set('n', '<leader>db', dap.toggle_breakpoint)
set('n', '<leader>di', dap.step_into)
set('n', '<leader>do', dap.step_out)
set('n', '<leader>dx', dap.terminate)

--this is going off the assumption that i always similar CMakePresets logic
local toggleterm = require "toggleterm"
CMAKE_PRESET = "Debug"
CMAKE_PROJECT = "project"
CMAKE_OUT_DIR = "out/%s"
local function cpp_build()
    local fmt = "cmake --preset %s ."
    toggleterm.exec(string.format(fmt, CMAKE_PRESET))
    toggleterm.exec(string.format(string.format("cmake --build %s", CMAKE_OUT_DIR), CMAKE_PRESET))
end

local function cpp_run()
    toggleterm.exec(("./%s/"):format(CMAKE_OUT_DIR:format(CMAKE_PRESET))..CMAKE_PROJECT)
end
vim.api.nvim_create_user_command("Run", cpp_run, {})
vim.api.nvim_create_user_command("Build", cpp_build, {})

