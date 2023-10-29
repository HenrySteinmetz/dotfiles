require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.eslint.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.taplo.setup{}
local lsp = require'lspconfig'

lsp.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
        disabled = {"unresolved-proc-macro"},
        enableExperimental = true,
      },
    }
  }
}
