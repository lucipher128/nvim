local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
   if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
      vim.fn.execute({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

Packer = require('packer')
Packer.startup({function(use)
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
   --use 'ray-x/lsp_signature.nvim'
	--use 'rhysd/vim-clang-format'
	-- use 'flazz/vim-colorschemes'
	-- use 'mhinz/vim-startify'
	use 'sharkdp/fd'
	use 'nvim-lua/plenary.nvim'
	--use 'neovim/nvim-lspconfig'
   --use 'williamboman/nvim-lsp-installer'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
   --use 'hrsh7th/cmp-nvim-lsp'
   --use 'hrsh7th/cmp-buffer'
   --use 'hrsh7th/nvim-cmp'
   -- use 'phaazon/hop.nvim'
   --use 'rcarriga/nvim-notify'
   --use 'cdelledonne/vim-cmake'
   use { "catppuccin/nvim", as = "catppuccin" }

   use {
     'VonHeikemen/lsp-zero.nvim',
     branch = 'v3.x',
     requires = {
       --- Uncomment these if you want to manage LSP servers from neovim
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

       -- LSP Support
       {'neovim/nvim-lspconfig'},
       -- Autocompletion
       {'hrsh7th/nvim-cmp'},
       {'hrsh7th/cmp-nvim-lsp'},
       {'L3MON4D3/LuaSnip'},
     }
   }


-- " For vsnip user.
   --use 'hrsh7th/cmp-vsnip'
   --use 'hrsh7th/vim-vsnip'
   --use 'hrsh7th/vim-vsnip-integ'
   --use 'rafamadriz/friendly-snippets'

   --use {'sakhnik/nvim-gdb', run = './install.sh' }

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = 'kyazdani42/nvim-web-devicons',
	    config = function() require'nvim-tree'.setup{diagnostics = {enable = true } } end
	}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'NTBBloodbath/galaxyline.nvim',
    		branch = 'main',
		-- your statusline
    		config = function() require'galaxyline.themes.eviline' end,
    		-- config = function() print("TODO:: Set up a galaxy line ") end,
    		-- some optional icons
    		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	    }
	use 'nvim-treesitter/playground'
	use 'tpope/vim-fugitive'
	-- use 'sudormrfbin/cheatsheet.nvim'

 end,config})

