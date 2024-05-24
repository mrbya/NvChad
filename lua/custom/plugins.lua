local plugins = {
    {
         "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "c", "lua", "vim", "angular", "arduino", "asm", "awk", "bash", "c_sharp", "cmake", "comment", "cpp", "css", "csv", "diff", "disassembly", "dockerfile", "doxygen", "fortran", "fsh", "gdscript", "git_config", "git_rebase", "gitattributes", "gitcommit", "hjson", "html", "http", "ini", "java", "javascript", "jq", "json", "json5", "kconfig", "linkerscript", "llvm", "luadoc", "make", "markdown", "markdown_inline", "matlab", "meson", "ninja", "objdump", "pascal", "passwd", "pem", "perl", "php", "phpdoc", "pod", "poe_filter", "pymanifest", "python", "regex", "requirements", "sql", "ssh_config", "tcl", "tmux", "toml", "typescript", "v", "verilog", "vim", "vimdoc", "vue", "xml", "yaml", "devicetree"},

          highlight = {
            enable = true,
            use_languagetree = true,
          },

          indent = { enable = true },
        },
    },
    {
        'rcarriga/nvim-dap-ui',
        event = 'VeryLazy',
        dependencies = {
            'mfussenegger/nvim-dap',
            'nvim-neotest/nvim-nio',
        },
        config = function ()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.before.attach.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
              dapui.open()
            end
            dap.listeners.after.event_initialised["dapui_config"] = function ()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function ()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function ()
                dapui.close()
            end
        end
    },
    {
        'jay-babu/mason-nvim-dap.nvim',
        event = 'VeryLazy',
        dependencies = {
            'williamboman/mason.nvim',
            'mfussenegger/nvim-dap',
        },
        opts = {
            handlers = {},
        },
    },
    {
        'mfussenegger/nvim-dap',
    },
    {
        'neovim/nvim-lspconfig',
        config = function ()
            require 'plugins.configs.lspconfig'
            require 'custom.configs.lspconfig'
        end
    },
    {
        'SuperBo/fugit2.nvim',
        opts = {
            width = 70,
        },
            dependencies = {
            'MunifTanjim/nui.nvim',
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim',
            {
                'chrisgrieser/nvim-tinygit', -- optional: for Github PR view
                dependencies = { 'stevearc/dressing.nvim' }
            },
        },
        cmd = {
            'Fugit2',
            'Fugit2Diff',
            'Fugit2Graph'
        },
        lazy = false,
    },
    {
        dir = '.',
        name = 'keyloader',
        config = function ()
            for section, x in pairs(require('custom.mappings.mappings')) do
                require('core.utils').load_mappings(section)
            end
        end,
        lazy = false
    },
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'verible',
                'rust_hdl',
                'clangd',
                'codelldb',
                'cmake-language-server'
            },
        },
    },
}

return plugins
