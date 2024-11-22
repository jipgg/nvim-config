require "first"
require "config.vim"
require "config.lazy"
if not __VSCODE_NEOVIM_EXT__ then
    require 'config.keymaps'
    require 'config.colorscheme'
else
    require 'config.vsckeymaps'
end
