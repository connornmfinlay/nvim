local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd",}

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

lspconfig.ansiblels.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"yaml"},
}

-- docker server
lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- dash server
lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes - {"shell"},
}
