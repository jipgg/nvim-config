vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require "global.Keybind"
require "global.pseudo_macros"
require "global.Mode"
require "lazyloader"
require "setup.vim"
require "setup.keymappings"
vim.cmd "colorscheme kanagawa-dragon"
require "setup.module_setup"

--vim.cmd "set background=light"
--vim.cmd "colorscheme zenbones"
