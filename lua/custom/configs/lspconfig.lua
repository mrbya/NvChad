local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities
local util = require 'lspconfig/util'

local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {'rust'},
    root_dir = util.root_pattern("Cargo.toml"),
    settings = {
        ['rust_analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
})

lspconfig.ts_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.emmet_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.svelte.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
