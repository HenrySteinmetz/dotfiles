require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "sumneko_lua", "clangd", "rust_analyzer", "taplo", "bashls" }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach
}

require("lspconfig").solargraph.setup {
  on_attach = on_attach
}

require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach,
  CARGO = "/usr/bin/cargo"
}

require("lspconfig").taplo.setup {
  on_attach = on_attach
}

require("lspconfig").bashls.setup {
  on_attach = on_attach
}
