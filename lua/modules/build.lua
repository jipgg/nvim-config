--build function
local warnFmt = "No [%s] global has been defined. Define it in you '.nvim.lua' file."

return {
    build = function()
        if not _BUILD then
            print(string.format(warnFmt, "_BUILD"))
            return
        end
        _BUILD()
    end,
    run = function()
        if not _RUN then
            print(string.format(warnFmt, "_RUN"))
            return
        end
        _RUN()
    end,
}

