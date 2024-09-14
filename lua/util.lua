local util = {}

function util.toggle_gitsigns()
    vim.cmd "Gitsigns toggle_numhl"
    vim.cmd "Gitsigns toggle_current_line_blame"
end

return util
