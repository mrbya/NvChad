local M = {}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add breakpoint at the current line",
        },
        ["<leader>dr"] = {
            "<cmd> DapContinue <CR>",
            "Run and debug / continue",
        },
        ["<leader>dt"] = {
            "<cmd> DapTerminate <CR>",
            "Terminates debugging session"
        },
    }
}

return M
