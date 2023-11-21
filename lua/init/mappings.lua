-- alias
local set = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }
local opts_term = {tnoremap = true, silent = true }
-- telescope mappings
set('n', '<leader>mp', '<cmd> Telescope keymaps <CR>', opts)
set('n', '<leader>ff', '<cmd> Telescope find_files <CR>', opts)
set('n', '<leader>F', '<cmd> Telescope find_files cwd=/mnt/Travail <CR>', opts)
set('n', '<leader>fg', '<cmd> Telescope live_grep<CR>', opts)
set('n', '<leader>fb', '<cmd> Telescope buffers <CR>', opts)
set('n', '<leader>fh', '<cmd> Telescope help_tags <CR>', opts)
set('n', '<leader>di', '<cmd> Telescope diagnostics bufnr=0 <CR>', opts)
set('n', '<leader>sm', '<cmd> Telescope lsp_document_symbols <CR>', opts)

set('n', '<leader>co', '<cmd> Telescope git_commits <CR>', opts)
set('n', '<leader>br', '<cmd> Telescope git_branches <CR>', opts)
set('n', '<leader>st', '<cmd> Telescope git_stash <CR>', opts)

-- nvim tree mappings
set('n', '<leader>m', '<cmd> NvimTreeToggle <CR>', opts)
--    permanent mappings
--buffer nav
set('n', '<C-b>', '<cmd>bp <CR>', opts)
set('n', '<C-n>', '<cmd>bn <CR>', opts)
-- split nav
set('n', '<C-l>', '<C-w><C-l>', opts)
set('n', '<C-h>', '<C-w><C-h>', opts)
set('n', '<C-k>', '<C-w><C-k>', opts)
set('n', '<C-j>', '<C-w><C-j>', opts)
-- terminal navigation
-- set('n', '<C-l>', '<C-w><C-l>', opts_term)
-- set('n', '<C-h>', '<C-w><C-h>', opts_term)
-- set('n', '<C-j>', '<C-w><C-j>', opts_term)
-- set('n', '<C-k>', '<C-w><C-k>', opts_term)

set('i', '<C-l>', '<C-w><C-l>', opts)
set('i', '<C-h>', '<C-w><C-h>', opts)
set('i', '<C-j>', '<C-w><C-j>', opts)
set('i', '<C-k>', '<C-w><C-k>', opts)

-- resizes
set('n', '<leader>z', '<cmd>res +5 <CR>', opts)
set('n', '<leader>s', '<cmd>res -5 <CR>', opts)
set('n', '<leader>b', '<cmd>vertical res +5 <CR>', opts)
set('n', '<leader>q', '<cmd>vertical res -5 <CR>', opts)
-- swa splits
set('n', '<leader>w', '<C-w>r', opts)
-- terminal
set('n', '<leader>tt', '<cmd> 10sp term://bash<CR>', opts)
-- split focus
set('n', '<leader>²', '<cmd>tab split <CR>', opts)
-- git fugitive mappings
set('n', '<leader>gc', '<cmd> G<CR>', opts)
set('n', '<leader>ds', '<cmd> Gvdiffsplit!<CR>', opts)
set('n', '<leader>h', '<cmd> diffget //2<CR>', opts)
set('n', '<leader>l', '<cmd> diffget //3<CR>', opts)
--clipboard to system
set('v', '<leader>y', '"+y', opts)
set('n', '<leader>y', '"+y', opts)
-- clang reformat
set('n', '<leader>cf', '<cmd>ClangFormat<CR>', opts)

-- move lines 
set('v', 'J', '<cmd> m \'>+1<CR>gv=gv', opts)
set('v', 'K', '<cmd> m \'>-2<CR>gv=gv', opts)
-- Cmake commands
set('n', '<leader>cg', '<cmd>CMakeGenerate <CR>', opts)
set('n', '<leader>cb', '<cmd>CMakeBuild<CR>', opts)
set('n', '<leader>cc', '<cmd>CMakeClean<CR>', opts)
set('n', '<leader>c', '<cmd>CMakeClose<CR>', opts)

-- vim.cmd[[imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>']]
-- vim.cmd[[smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>']]

-- vim.cmd[[imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]
-- vim.cmd[[smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']]

-- vim.cmd[[imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]
-- vim.cmd[[smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>']]

-- vim.cmd[[imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]
-- vim.cmd[[smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>']]

-- " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- " See https://github.com/hrsh7th/vim-vsnip/pull/50
-- nmap        s   <Plug>(vsnip-select-text)
-- xmap        s   <Plug>(vsnip-select-text)
-- nmap        S   <Plug>(vsnip-cut-text)
-- xmap        S   <Plug>(vsnip-cut-text)
-- vim.g.vsnip_filetypes = {}
-- vim.g.vsnip_filetypes.cpp = ['cpp'];
