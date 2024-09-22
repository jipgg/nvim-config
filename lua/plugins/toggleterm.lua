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
if __WINDOWS__ then
    opts.shell = "powershell.exe"
end

return {
    {'akinsho/toggleterm.nvim', version = "*", opts = opts}
}
