local base = require('plugins.configs.lspconfig')
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require('lspconfig')

lspconfig.verible.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = {
        'verible-verilog-ls',
        '--rules=-explicit-parameter-storage-type,-no-trailing-spaces'
    },
}

lspconfig.vhdl_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.clangd.setup {
    on_attach = function (client, bufnr)
        client.srver_capabilities.signatureHelpProvider = false
        on_attach(client, bufnr)
    end
}

lspconfig.cmake.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}
