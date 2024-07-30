local Terminal = require("toggleterm.terminal").Terminal

local terminals = {}

local rojo = Terminal:new {
    display_name = "Rojo",
    direction = "float",
    float_opts = {
        border = "shadow",
        winblend = 1,
    }
}


return terminals
