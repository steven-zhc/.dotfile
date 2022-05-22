vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- enable nvim nvim
        diagnostics = "nvim_lsp",
        -- setup offsets for NvimTree
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
}
