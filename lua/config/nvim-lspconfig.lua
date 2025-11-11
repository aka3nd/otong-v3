--require('cmp_nvim_lsp').default_capabilities()
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- bash --
vim.lsp.config('bashls', {
  cmd = { "bash-language-server", "start" },
  filetypes = { "bash", "sh" },
  capabilities = capabilities,
})
vim.lsp.enable('bashls')

-- rust language --
vim.lsp.config('rust_analyzer', {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  capabilities = capabilities,
})
vim.lsp.enable('rust_analyzer')

-- c/cpp--
vim.lsp.config('clangd', {
  cmd = { "clangd"},
  init_options = {
    fallbackFlags = { "-std=c++26" },
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
  capabilities = capabilities,
})
vim.lsp.enable('clangd')

-- lua language --
vim.lsp.config('lua_ls', {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  capabilities = capabilities,
})
vim.lsp.enable('lua_ls')
