-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    requires = { 
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
    }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
     })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
	}
  
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      -- LSP support
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      }
    }

end)

