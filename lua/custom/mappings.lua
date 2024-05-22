local M = {}

M.dap = {
    plugin = true,
    n = {
        ['<leader>db'] = {
            '<cmd> DapToggleBreakpoint <CR>',
            'Add breakpoint @ the current line',
        },
        ['<leader>dr'] = {
            '<cmd> DapContinue <CR>',
            'Run and debug / continue',
        },
        ['<leader>dt'] = {
            '<cmd> DapTerminate <CR>',
            'Terminate debugging session'
        },
    },
}

return M
