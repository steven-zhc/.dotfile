vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- common
map("n", "<leader>m", ":source $MYVIMRC<CR>", opt)
map("i", "<C-j>", "<ESC>", opt)

-- windows/tab related
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)

-- close current
map("n", "sc", "<C-w>c", opt)
-- close others
map("n", "so", "<C-w>o", opt)

map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)

-- left/right size
map("n", "<C-h>", ":vertical resize +2<CR>", opt)
map("n", "<C-l>", ":vertical resize -2<CR>", opt)
map("n", "sh", ":vertical resize +20<CR>", opt)
map("n", "sl", ":vertical resize -20<CR>", opt)
-- up/bottom size
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)
map("n", "<C-j>", ":resize +2<CR>", opt)
map("n", "<C-k>", ":resize -2<CR>", opt)
-- same ratio
map("n", "s=", "<C-w>=", opt)

-- Terminal related
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- visual mode: shift left/right
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- move selected text
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- scroll up/down
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  only move 9 lines
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- quit
map("n", "q", ":q<CR>", opt)
map("n", "qq", ":q!<CR>", opt)
map("n", "Q", ":qa!<CR>", opt)

-- insert mode: insert line head/end 
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- ================================================================
-- Plugin key mapping

-- nvimTree
map('n', '<leader>n', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>i', ':NvimTreeFindFile<CR>', opt)

-- bufferline
map("n", "<leader>,", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>.", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>/", ":BufferLineClosePick<CR>", opt)

-- Telescope
map("n", "<leader>ff", ":lua require('telescope.builtin').find_files{ hidden = true }<cr>", opt)
map("n", "<leader>ps", ":lua require('telescope.builtin').grep_string( { search = vim.fn.input('Grep for > ') } )<cr>", opt)
map("n", "<leader>fr", ":lua require'telescope.builtin'.resume{}<cr>", opt)

