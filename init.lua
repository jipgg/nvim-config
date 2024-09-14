require "first"
require "config.vim"
if not __VSCODE__ then
    require "config.lazy"
    require 'config.keymap'
    require 'config.colorscheme'
end
