local Themes = {
    [0] = "vscode", "darcula-dark", "zenbones", "kanagawa-wave", "kanagawa-dragon"
}
local currIdx = 9

local function cycleTheme()
    currIdx = (currIdx + 1) % (#Themes + 1)
    local theme = Themes[currIdx]
    vim.cmd("colorscheme "..theme)
    print("Theme set to "..theme)
end

local Background = {
    [0] = "dark", "light"
}
local currBgIdx = 0


local function changeBackground()
    currBgIdx = (currBgIdx + 1) % (#Background + 1)
    local bg = Background[currBgIdx]
    vim.cmd ("set background="..bg)
    print("Background set to "..bg)
end

return {theme = cycleTheme, background = changeBackground}
