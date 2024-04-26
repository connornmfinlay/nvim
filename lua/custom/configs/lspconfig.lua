local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"bashls", "pyright", "rust_analyzer", "ansiblels", "dockerls", "bashls", "golangci_lint_ls", "zls"},
})
-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd","bashls","dockerls","golangci_lint_ls", "zls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--python
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
}

--rust
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
}

--ansible server
lspconfig.ansiblels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"yaml"},
}

