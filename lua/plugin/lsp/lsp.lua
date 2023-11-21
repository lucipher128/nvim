require('plugin/lsp/lspInstaller')
local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- for nvim completion // use until vim-cmp is properly set up
  -- require('completion').on_attach();

  require('lsp_signature').on_attach()

  -- Enable completion triggered by <c-x><c-o>
  --buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua vim.notify(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>Telescope lsp_code_actions<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>Telescope lsp_references<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  end

local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  vim.notify("Unsupported system for sumneko","warn",{title = "LSP:: sumneko_lua can't attach"})
end


local sumneko_binary_path = "/home/lucifer/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server"
local sumneko_root_path = "/home/lucifer/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/"
-- local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")



lsp_installer.on_server_ready(function(server)
   --vim context for lua
   if server.name == "sumneko_lua" then
            local opts_lua = {
                  capabilies = require('cmp_nvim_lsp').default_capabilities(),
	               cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"},
	               on_attach = on_attach,
	               settings = {
	                  Lua = {
	                     runtime = {
		               -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
		               version = 'LuaJIT',
		               -- Setup your lua path
		               path = runtime_path,
	                     },
	                     diagnostics = {
		               -- Get the language server to recognize the `vim` global
		               globals = {'vim'},
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
            }
      server:setup(opts_lua)
      return
   end

      --all servers
      local opts = {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    -- vim-cmp set up for language server per se
    capabilies = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
   server:setup(opts)
end)
