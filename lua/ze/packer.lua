return require('packer').startup(function(use)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Packer can manage itself
	use 'williamboman/mason.nvim'    
	use 'williamboman/mason-lspconfig.nvim'

	use 'neovim/nvim-lspconfig' 
	use 'simrat39/rust-tools.nvim'

	-- Completion framework:
	use 'hrsh7th/nvim-cmp' 

	-- LSP completion source:
	use 'hrsh7th/cmp-nvim-lsp'

	-- Useful completion sources:
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'                             
	use 'hrsh7th/cmp-path'                              
	use 'hrsh7th/cmp-buffer'                            
	use 'hrsh7th/vim-vsnip'            
	

	use 'nvim-treesitter/nvim-treesitter'

	
	use 'puremourning/vimspector'
end)
