local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { 'numToStr/Comment.nvim', opts = {}, lazy = false, },
  { 'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
        require('nvim-surround').setup()
    end
  },

  { 'godlygeek/tabular' },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'FelipeLema/cmp-async-path' },
  { 'hrsh7th/nvim-cmp' },
  { 'dcampos/nvim-snippy' },
  { 'dcampos/cmp-snippy' },
  { 'honza/vim-snippets' },
  { 'vimwiki/vimwiki' },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
      "ibhagwan/fzf-lua",              -- optional
    },
    config = true
  }
}

local opts = {}

require("lazy").setup(plugins, opts)
--  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
--  use { 'romgrk/barbar.nvim', requires = 'nvim-web-devicons' }
--  use 'williamboman/mason.nvim'    
--  use 'williamboman/mason-lspconfig.nvim'
--  use 'neovim/nvim-lspconfig'
--  -- Completion framework:
--  use 'hrsh7th/nvim-cmp' 
--  -- LSP completion source:
--  use 'hrsh7th/cmp-nvim-lsp'
--  -- Useful completion sources:
--  use 'hrsh7th/cmp-nvim-lua'
--  use 'hrsh7th/cmp-nvim-lsp-signature-help'
--  use 'hrsh7th/cmp-path'                              
--  use 'hrsh7th/cmp-buffer'   
--  use 'nvim-treesitter/nvim-treesitter'
--  use { 'dcampos/cmp-snippy', requires = { 'dcampos/nvim-snippy', 'honza/vim-snippets' } }
--  -- Using Packer
--  use 'navarasu/onedark.nvim'
--  use {
--    'nvim-telescope/telescope.nvim', tag = '0.1.1',
--    requires = { {'nvim-lua/plenary.nvim'} }
--  }
--  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
--  use 'nvim-tree/nvim-tree.lua'
--  use({ "elixir-tools/elixir-tools.nvim", requires = { "nvim-lua/plenary.nvim" }})
--  use {
--    'vimwiki/vimwiki',
--    config = function()
--        vim.g.vimwiki_list = {
--            {
--                path = '/home/f1sty/media/docs/wiki',
--                syntax = 'markdown',
--                ext = '.md',
--            }
--        }
--    end
--    }
