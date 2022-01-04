" common setup ------------------------------------------

" enables syntax highlighting
syntax on

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number

" add relative number
set relativenumber

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" copy
set clipboard=unnamed

" plugin -----------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'gruvbox-community/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline
Plug 'itchyny/lightline.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" LSP
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'

" Autocompletion
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'
"Plug 'onsails/lspkind-nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Rainbow
Plug 'frazrepo/vim-rainbow'

" Nerdtree
Plug 'preservim/nerdtree'

" Auto-pair plugin
Plug 'tmsvg/pear-tree'

" Syntax
Plug 'sheerun/vim-polyglot'

" ESLint
"Plug 'dense-analysis/ale'

" Code helper
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" declare your color scheme
colorscheme gruvbox

" Use this for dark color schemes
set background=dark

lua require('steven')

" remaps ---------------------------------------
let mapleader = ' '

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>

nnoremap Y "+y
vnoremap Y "+y

nnoremap <C-p> :Telescope find_files<Cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

