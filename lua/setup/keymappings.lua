local set = vim.keymap.set
set('n', Keybind.General.CloseCurrentBuffer,  function ()
    vim.cmd "bdelete"
end)
vim.keymap.set("t", "<Esc>" , function ()
    --local toggleterm = require("toggleterm")
    --toggleterm.toggle_all(false)
    vim.cmd "stopinsert"
end)
local buildTools = require"modules.build"
vim.keymap.set("n", Keybind.General.Build, buildTools.build)
vim.keymap.set("n", Keybind.General.Run, buildTools.run)
vim.keymap.set("n", Keybind.ToggleTerm.Toggle, function() vim.cmd"ToggleTerm" end)
vim.keymap.set(Mode.Normal, "<leader>l", function ()
    vim.cmd("e C:/Users/juape/appdata/local/nvim-data/lsp.log")
end)
