local set = vim.keymap.set
-- @ nvim-tree
set("n", "<leader>o", vim.cmd.ToggleTerm)
set("t", "<Esc>", vim.cmd.ToggleTerm)
set('n', "<leader>dr", vim.lsp.buf.rename) --rename
set('n', "<leader>dq", function() vim.cmd"Gitsigns toggle_current_line_blame" end)
set('n', "<leader>dn", function() vim.cmd"Gitsigns toggle_numhl" end)
set('n', "<leader>dw", function() vim.cmd"Gitsigns toggle_word_diff" end)
-- @ telescope
local telescope_builtin = require('telescope.builtin')
set('n', "<leader>aj", telescope_builtin.find_files)
set('n', "<leader>ag", telescope_builtin.git_files)
set('n', "<leader>ai", telescope_builtin.live_grep)
set('n', "<leader>ak", telescope_builtin.buffers)
set('n', "<leader>ao", telescope_builtin.current_buffer_fuzzy_find)
set('n', "<leader>al", telescope_builtin.diagnostics)
set('n', "<leader>ah", telescope_builtin.help_tags)
set('n', "<leader>ac", telescope_builtin.commands)
set('n', "<leader>ap", telescope_builtin.keymaps)
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

--oil

set('n', '<leader>fo', function ()
    vim.cmd"Oil"
end)
