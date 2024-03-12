local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = { "c", "lua", "vim", "angular", "arduino", "asm", "awk", "bash", "c_sharp", "cmake", "comment", "cpp", "css", "csv", "diff", "disassembly", "dockerfile", "doxygen", "fortran", "fsh", "gdscript", "git_config", "git_rebase", "gitattributes", "gitcommit", "hjson", "html", "http", "ini", "java", "javascript", "jq", "json", "json5", "kconfig", "linkerscript", "llvm", "luadoc", "make", "markdown", "markdown_inline", "matlab", "meson", "ninja", "objdump", "pascal", "passwd", "pem", "perl", "php", "phpdoc", "pod", "poe_filter", "pymanifest", "python", "regex", "requirements", "sql", "ssh_config", "tcl", "tmux", "toml", "typescript", "v", "verilog", "vim", "vimdoc", "vue", "xml", "yaml"},

          highlight = {
            enable = true,
            use_languagetree = true,
          },

          indent = { enable = true },
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = "mfussenegger/nvim-dap",
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
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {}
        }
    },
    {
        "mfussenegger/nvim-dap",
        config = function (_, _)
            require("core.utils").load_mappings("dap")
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "codelldb",
                "cmake-language-server"
            }
        }
    }
}
return plugins
