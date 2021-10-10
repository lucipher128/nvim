vim.g.mapleader = " "
vim.g.vimsyn_embed = '1'
vim.g.vsnip_snippet_dirs = {'~/.local/share/nvim/site/pack/packer/start/friendly-snippets/snippets'}

vim.opt.ignorecase = true
vim.opt.shiftwidth = 3
vim.opt.tabstop = 3
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.wildmenu = true
vim.opt.hlsearch = true
vim.opt.autoindent = true
vim.opt.ruler = true
vim.opt.laststatus = 2
vim.opt.splitbelow = false
vim.opt.splitright = true
vim.opt.colorcolumn = '110'
vim.opt.syntax = 'on'
vim.opt.background = 'dark'
vim.opt.wrap = false
vim.opt.updatetime = 300
vim.opt.signcolumn = 'yes'
vim.opt.completeopt = {"menuone", "noinsert", "noselect"}

vim.wo.relativenumber = true
vim.wo.number = true

vim.api.nvim_command[[set termguicolors]]
vim.api.nvim_command [[colorscheme gruvbox]]
vim.api.nvim_command [[hi Normal guibg=NONE]]
vim.api.nvim_command [[hi NonText guibg=NONE]]


vim.cmd[[set fillchars+=vert:\ ]]
vim.cmd[[
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}
]]
vim.cmd[[filetype plugin indent on ]]
