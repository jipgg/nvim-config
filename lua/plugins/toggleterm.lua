local opts = {
    size = 25,
    direction = "horizontal",
    float_opts = {
        style = 'minimal',
        border = 'double',
    },
    shade_terminals = true,
    title = "terminal",
    hide_numbers = true,
    persist_size = false,
}

return {
    {'akinsho/toggleterm.nvim', version = "*", opts = opts}
}
