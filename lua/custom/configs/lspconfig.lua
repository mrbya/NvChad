local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

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
