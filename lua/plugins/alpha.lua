local function setup()
    local alpha = require 'alpha'
    local theta = require "alpha.themes.theta"
    alpha.setup(require'alpha.themes.theta'.config)
end

return {
    'goolord/alpha-nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = setup,
};
