local M = {}

M.fugit2 = {
    plugin = true,
    n = {
        ['<leader>gf'] = {
            '<cmd>Fugit2<CR>',
            'Open git UI',
        },
        ['<leader>gg'] = {
            '<cmd>Fugit2Graph<CR>',
            'Show git graph',
        },
        ['<leader>gd'] = {
            '<cmd>Fugit2Diff<CR>',
            'Show git diff'
        }
    }
}

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
