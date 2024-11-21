local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require('lspconfig')

lspconfig.bashls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
