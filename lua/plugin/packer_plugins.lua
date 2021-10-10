packer = require('packer')
packer.startup({function(use)
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'kabouzeid/nvim-lspinstall'
   use 'ray-x/lsp_signature.nvim'
	use 'rhysd/vim-clang-format'
	use 'flazz/vim-colorschemes'
	use 'mhinz/vim-startify'
	use 'sharkdp/fd'
	use 'nvim-lua/plenary.nvim'
	use 'neovim/nvim-lspconfig'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/nvim-cmp'

-- " For vsnip user.
   use 'hrsh7th/cmp-vsnip'
   use 'hrsh7th/vim-vsnip'
   use 'hrsh7th/vim-vsnip-integ'
   use 'rafamadriz/friendly-snippets'

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
	    'kyazdani42/nvim-tree.lua',
	    requires = 'kyazdani42/nvim-web-devicons',
	    config = function() require'nvim-tree'.setup {} end
	}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
	use { 'glepnir/galaxyline.nvim',
    		branch = 'main',
		-- your statusline
    		config = function() require'eviline' end,
    		-- config = function() print("TODO:: Set up a galaxy line ") end,
    		-- some optional icons
    		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	    }
	use 'nvim-treesitter/playground'
	use 'tpope/vim-fugitive'
	use 'sudormrfbin/cheatsheet.nvim'

end,config})

