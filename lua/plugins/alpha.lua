local function setup()
    local alpha = require 'alpha'
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
