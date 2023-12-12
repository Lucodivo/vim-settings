-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Plenary: Telescope dependency
  use 'nvim-lua/plenary.nvim'
  -- Telescope: Fuzzy finder 
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.3', }

  -- color themes
  use ({
    -- 'rose-pine/neovim', as = 'rose-pine',
    -- 'folke/tokyonight.nvim',
    -- as = 'tokyonight',
    -- 'catppuccin/nvim', as = 'catppuccin', config = function() vim.cmd('colorscheme catppuccin') end
    'projekt0n/caret.nvim', config = function() require('caret').setup({}) vim.cmd('colorscheme caret') end
  })

  -- Treesitter: Provides nVim syntax structure for folding, highlighting, text-objects, and more.
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Vim learning game ( VimBeGood command-line command)
  use('ThePrimeagen/vim-be-good')

  -- UndoTree 
  use('mbbill/undotree')

  -- rust nvim walkthrough
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'

  -- collection of lsp configurations
  use 'neovim/nvim-lspconfig' 
  -- tools to automatically set up lspconfig for rust-analyzer
  use 'simrat39/rust-tools.nvim'

  -- nvim-dap
  use 'mfussenegger/nvim-dap'

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

end)
