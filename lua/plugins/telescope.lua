--loader
return {
	'nvim-telescope/telescope.nvim',
  	dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local defaults = {
            layout_strategy = "vertical",
            layout_config = {
                horizontal = {size = {width = "10%", height = "10%"} },
                vertical = {size = {width = "10%", height = "10%"} }
            },
        }
        require"telescope".setup {
            defaults = defaults;
        }
    end
}
