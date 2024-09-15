local base = require('plugins.configs.lspconfig')
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require('lspconfig')

lspconfig.solargraph.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

-- rubocop LSP setup as an alternative for solargraph
-- lspconfig.rubocop.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
-- }
