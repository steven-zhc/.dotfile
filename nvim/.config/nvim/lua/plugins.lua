return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use {'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } }
  use {'rakr/vim-one'}

  use("glepnir/dashboard-nvim")

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'arkav/lualine-lsp-progress' }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- buffer line
  use {
    'akinsho/bufferline.nvim',
    requires = { 'yazdani42/nvim-web-devicons', 'moll/vim-bbye' },
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- ====================================================
  -- Editor Plugins
  -- ====================================================

  use {'p00f/nvim-ts-rainbow'}

  use {'Yggdroot/indentLine'}

  use {'jiangmiao/auto-pairs'}

  use {'Pocco81/AutoSave.nvim'}

  -- file search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use{ 'LinArcX/telescope-env.nvim' }
  use{ 'nvim-telescope/telescope-ui-select.nvim' }

  use { 'easymotion/vim-easymotion' }

  -- surround editor
  use { 'tpope/vim-surround' }

  -- Git
  use 'tpope/vim-fugitive'
  use { 'lewis6991/gitsigns.nvim' }

  -- "gc" to comment visual regions/lines
  use { 'numToStr/Comment.nvim' }

  -- ====================================================
  -- lspconfig
  -- ====================================================
  use { 'williamboman/nvim-lsp-installer' }

  use { 'neovim/nvim-lspconfig' }

  -- nvim-cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use('hrsh7th/cmp-nvim-lsp-signature-help') -- { name = 'nvim_lsp_signature_help' }
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind. UI enhancement
  use 'onsails/lspkind-nvim'
  use 'tami5/lspsaga.nvim'

  -- formatter
  use("mhartington/formatter.nvim")
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

  use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
  use("folke/lua-dev.nvim") -- lua
  use("b0o/schemastore.nvim") -- json
  use("simrat39/rust-tools.nvim") -- rust

  use("j-hui/fidget.nvim")

end)
