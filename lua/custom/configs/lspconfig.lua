local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require('lspconfig')

local servers = {
  "pyright",
  "ruff_lsp",
}

lspconfig.bashls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
  })
end
