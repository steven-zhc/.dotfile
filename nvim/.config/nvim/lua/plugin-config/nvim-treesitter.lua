require'nvim-treesitter.configs'.setup {
    -- Install language parser
    -- :TSInstallInfo 
    ensure_installed = {"html", "css", "vim", "lua", "javascript", "typescript", "tsx", "haskell", "go", "python", "toml", "yaml", "java", "bash"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    rainbow = {
        enable = true,
        extended_mode = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },
    -- format by treesitter, Key: =. NOTE: This is an experimental feature.
    indent = {
        enable = true
    }
}
-- enable Folding
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- default is unfolded
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99
