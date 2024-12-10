local plugins = {
    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = { 'c', 'lua', 'vim', 'angular', 'arduino', 'asm', 'awk', 'bash', 'c_sharp', 'cmake', 'comment', 'cpp', 'css', 'csv', 'diff', 'disassembly', 'dockerfile', 'doxygen', 'fortran', 'fsh', 'gdscript', 'git_config', 'git_rebase', 'gitattributes', 'gitcommit', 'hjson', 'html', 'http', 'ini', 'java', 'javascript', 'jq', 'json', 'json5', 'kconfig', 'linkerscript', 'llvm', 'luadoc', 'make', 'markdown', 'markdown_inline', 'matlab', 'meson', 'ninja', 'objdump', 'pascal', 'passwd', 'pem', 'perl', 'php', 'phpdoc', 'pod', 'poe_filter', 'pymanifest', 'python', 'regex', 'requirements', 'sql', 'ssh_config', 'tcl', 'tmux', 'toml', 'typescript', 'v', 'verilog', 'vim', 'vimdoc', 'vue', 'xml', 'yaml'},

            highlight = {
                enable = true,
            },

            indent = { enable = true },
        },
    },
    {
        '3rd/image.nvim',
        lazy = false,
        config = function ()
            require("image").setup({
              backend = "kitty",
              processor = "magick_rock",
              integrations = {
                markdown = {
                  enabled = true,
                  clear_in_insert_mode = false,
                  download_remote_images = true,
                  only_render_image_at_cursor = false,
                  floating_windows = false,
                  filetypes = { "markdown", "vimwiki" },
                },
                html = {
                  enabled = true,
                },
                css = {
                  enabled = true,
                },
              },
              max_width = nil,
              max_height = nil,
              max_width_window_percentage = 50,
              max_height_window_percentage = 75,
              window_overlap_clear_enabled = false,
              window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
              editor_only_render_when_focused = false,
              tmux_show_only_in_active_window = true,
              hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
            })
        end
    },
    {
        'neomark',
        dir = '~/mycodes/lua/neomark',
        event = 'VeryLazy',
        opts = {
            keymaps = {
                interactive_mode_enter = 'l'
            },
            snippets = true,
        }
    },
    {
      'nfrid/markdown-togglecheck',
      dependencies = { 'nfrid/treesitter-utils' },
        lazy = false,
      ft = { 'markdown' },
    },
    {
        "neovim/nvim-lspconfig",
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
            for section, _ in pairs(require('custom.mappings.mappings')) do
                require('core.utils').load_mappings(section)
            end
        end,
        lazy = false
    },
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = {
                'bash-language-server',
                'lua-language-server',
            }
        }
    },
}
return plugins
