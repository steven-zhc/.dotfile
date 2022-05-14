return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme 
  use {'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } }
  use {'rakr/vim-one'}

  use {'mhinz/vim-startify'}
  use {'Yggdroot/indentLine'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- nvim-tree
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

  -- buffer line
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- file search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- surround editor
  use {
    'tpope/vim-surround'
  }

  -- Git
  use 'tpope/vim-fugitive'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  -- "gc" to comment visual regions/lines
  use 'numToStr/Comment.nvim'

  -- lspconfig
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require("lsp.nvim-lspconfig")
    end
  }

  use {
    "williamboman/nvim-lsp-installer",
    --config = function()
    --  require("lsp.nvim-lsp-installer")
    --end
  }                                          

  use {
    "tami5/lspsaga.nvim",
    --config = function()
    --  require("lsp.lspsaga")
    --end
  }

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'

  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

end)
