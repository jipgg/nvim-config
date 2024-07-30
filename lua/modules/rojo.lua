local Terminal = require"toggleterm.terminal".Terminal

local term = Terminal:new {
    display_name = "     ROJO     ",
    direction = "float",
    start_in_insert = false,
    close_on_exit = false,
    float_opts = {
        border = "single",
        title_pos = "center",
        width = 80,
        height = 20,
    },
    on_open = function ()
        vim.cmd("stopinsert")
    end,
    on_stdout = function (t, job, data, name)
        for _, v in pairs(data) do
            local found = string.find(v, "ERROR")
            if found then
                t:open()
                print("Unable to execute command.")
                break
            end
        end
    end
}


local rojo = {}

local termExists = false
local goBack = true

local states = setmetatable({
    ["install"] = function()
        term:send("aftman add rojo-rbx/rojo", goBack)
    end,
    ["init"] = function ()
        term:send("rojo init", goBack)
    end,
    ["build"] = function ()
        term:send("rojo build -o build.rbxlx", goBack)
    end,
    ["serve"] = function ()
        term:send("rojo serve", goBack)
    end,
    ["shutdown"] = function()
        term:shutdown()
        termExists = false
    end,
    ["show"] = function()
        term:open()
    end,
    ["hide"] = function ()
        term:close()
    end
}, {
    __index = function()
        print "invalid rojo command"
        term:close()
        return 1
    end
})

function rojo.init()
    vim.keymap.set("n", "q", function ()
        if term:is_focused() then
            term:close()
        end
    end)

    vim.api.nvim_create_user_command("Rojo", function (opts)
        if not termExists then
            termExists = true
            term:open(); term:close() --hacky way to init the window for sending commands if not initialized yet
            term:send("cls", true)
        end
        if states[opts.args]() == nil then
            --term:open()
        end
--        if wasClosed then  term:close() end
    end, {
            nargs = "?",
        }
    )
end


return rojo
