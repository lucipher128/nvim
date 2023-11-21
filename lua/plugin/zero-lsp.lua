local lsp_zero = require('lsp-zero')

require("mason").setup()
require("mason-lspconfig").setup()

lsp_zero.on_attach(function(client, bufnr)
lsp_zero.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false
  })
end)


require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})
require('lspconfig').bashls.setup({})
