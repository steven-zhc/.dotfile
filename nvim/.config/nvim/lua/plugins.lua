return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- theme 
  use {'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } }
  use {'rakr/vim-one'}

  use {'mhinz/vim-startify'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua', 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('plugin-config.nvim-tree')
    end
  }

  -- buffer line
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('plugin-config.bufferline')
    end
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugin-config.nvim-treesitter')
    end
  }

  -- ====================================================
  -- Editor Plugins
  -- ====================================================

  use {'Yggdroot/indentLine'}

  use {'jiangmiao/auto-pairs'}
  
  -- file search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'easymotion/vim-easymotion'
  }

  -- surround editor
  use {
    'tpope/vim-surround'
  }

  -- Git
  use 'tpope/vim-fugitive'
  use { 
    'lewis6991/gitsigns.nvim', 
    config = function()
      require('plugin-config.gitsigns')
    end
  }

  -- "gc" to comment visual regions/lines
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('plugin-config.comment')
    end
  }

  -- ====================================================
  -- lspconfig
  -- ====================================================
--[[
  use {
    "williamboman/nvim-lsp-installer",
    {
      "neovim/nvim-lspconfig",
      config = function()
        require('lsp.nvim-lsp-installer') 
        require('lsp.nvim-lspconfig')
      end
    }
  }
  --]]

  use {
    'neovim/nvim-lspconfig'
  }

  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {}
    end
  }

end)
