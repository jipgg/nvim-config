local util = require "util"
local telescope_builtin = require('telescope.builtin')
local dap = require 'dap'
local toggleterm = require "toggleterm"
local set = vim.keymap.set

set("t", "<Esc>", vim.cmd.ToggleTerm)--for toggleterm close in terminal mode
set('n', "<leader>dr", vim.lsp.buf.rename)
set("n", "<leader>gn", vim.cmd.Neogit)
set('n', "<leader>gt", util.toggle_gitsigns)
set('n', "<leader>gc", telescope_builtin.git_status)
set('n', "<leader>gf", telescope_builtin.git_files)
set('n', "<leader>aj", telescope_builtin.find_files)
set('n', "<leader>ai", telescope_builtin.live_grep)
set('n', "<leader>ak", telescope_builtin.buffers)
set('n', "<leader>ao", telescope_builtin.current_buffer_fuzzy_find)
set('n', "<leader>ad", telescope_builtin.diagnostics)
set('n', "<leader>ah", telescope_builtin.help_tags)
set("n", "<leader>al", vim.cmd.Oil)
set("n", "<leader>ap", vim.cmd.ToggleTerm)
set('n', '<leader>dbc', dap.continue)
set('n', '<leader>dbb', dap.toggle_breakpoint)
set('n', '<leader>dbi', dap.step_into)
set('n', '<leader>dbo', dap.step_out)
set('n', '<leader>dbx', dap.terminate)
set('n', '<leader>w', '<C-w>')
set('n', '<leader>!', util.toggle_background)

set('n', '<leader>lr', vim.cmd.LspRestart)
set('n', '<leader>lx', vim.cmd.LspStop)
set('n', '<leader>ls', vim.cmd.LspStart)
set('n', '<leader>la', vim.cmd.LspInfo)
