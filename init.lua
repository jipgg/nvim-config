require "first"
require "config.vim"
if not __VSCODE_NEOVIM_EXT__ then
    require "config.lazy"
    require 'config.keymaps'
    require 'config.colorscheme'
end
