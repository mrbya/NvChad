local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require('lspconfig')

lspconfig.bashls.setup{
    on_attach = on_attach,
    capabilities = capabilities
}

-- local server_name = 'aislave_ls'
--
-- lspconfig[server_name] = {
--     default_config = {
--         cmd = { "node", "/home/mrbya/mycodes/js/aislave_ls/dist/server.js", "--stdio" },
--         filetypes = { "javascript", "typescript" },
--         root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
--         single_file_support = true,
--     },
--     docs = {
--         description = [[
--         Custom LSP server for AI-assisted code completion using Ollama.
--         ]],
--     },
-- }
--
-- lspconfig.aislave_ls.setup({
--     on_attach = on_attach,
--     capabilities = capabilities,
-- })
