-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} },
  }

  -- Theme
  use {
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin') -- sets the colorscheme
	  end
  }

  -- File explorer
  use { 'preservim/nerdtree' }

  -- ctrl + vim move keys for navigating panes
  use { 'christoomey/vim-tmux-navigator' }


  -- Syntax highlighting
  use {
	  'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
  }

  -- For undoing
  use { 'mbbill/undotree' }


  -- Vim Fugitive is a UI for vim, not sure if I'll use this or not
  use { 'tpope/vim-fugitive' }


  -- Trouble is lsp keybindings and stuff
  use { 'folke/trouble.nvim' }

  -- #############
  -- LSP setup
  -- #############
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

          {'simrat39/rust-tools.nvim'}, -- Rust
          -- Debugging
          { 'nvim-lua/plenary.nvim'}, -- Rust
          { 'mfussenegger/nvim-dap'}, -- Rust

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }


end)

