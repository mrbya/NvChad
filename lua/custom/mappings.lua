local M = {}

M.dap = {
    plugin = true,
    n = {
        ['<leader>db'] = {
            '<cmd> DapToggleBreakpoint <CR>',
            'Add breakpoint @ the current line',
        },
        ['<leader>dr'] = {
            "<cmd> DapContinue <CR>",
            "Run debugger (start/continue)",
        },
        ['<leacer>dt'] = {
            '<cmd> DapTerminate <CR>',
            'Terminates debugging session',
        }
    }
}

M.crates = {
    n = {
        ['<leader>rcu'] = {
            function ()
                require('crates').upgrade_all_crates()
            end,
            'Update rust crates'
        }
    }
}

return M
