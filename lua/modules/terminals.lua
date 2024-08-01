local Terminal = require("toggleterm.terminal").Terminal

local terminals = {}


local lazygit = Terminal:new {
    cmd = "lazygit",
    close_on_exit = true,
    direction = "tab",
    on_open = function (term)

    end
}
vim.api.nvim_create_user_command("Lazygit", function ()
    lazygit:toggle()
end, {})

return terminals
