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
        "mfussenegger/nvim-lint",
        event = "VeryLazy",
        config = function ()
            require "custom.configs.lint"
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "eslint-lsp",
                "js-debug-adapter",
                "typescript-language-server",
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
}
return plugins
