local opts = {
    size = 16,
    direction = "horizontal",
    float_opts = {
        style = 'minimal',
        border = 'double',
    },
    shade_terminals = true,
    title = "Powershell",
    hide_numbers = true,
    persist_size = false,
    shell = "powershell.exe",
}

return {
    {'akinsho/toggleterm.nvim', version = "*", opts = opts}
}
