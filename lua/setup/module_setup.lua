local cycle = require"modules.theme_cycle"

vim.keymap.set(Mode.Normal, Keybind.General.CycleTheme, cycle.theme)
vim.keymap.set(Mode.Normal, Keybind.General.CycleBackground, cycle.background)
