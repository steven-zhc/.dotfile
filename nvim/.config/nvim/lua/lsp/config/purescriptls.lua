local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  -- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

return {
    on_setup = function(server)
        server.filetypes = { "purescript", "purs" }
        server.setup({
            on_attach = on_attach,
            flags = lsp_flags,
        })
    end,
}

-- return {
--     on_setup = function(server)
--         server.setup({
--             capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
--             settings = {
--                 purescript = {
--                     addSpagoSources = false,
--                     buildOpenedFiles = true,
--                 }
--             },
--             flags = {
--                 debounce_text_changes = 150,
--             },
--             on_attach = function(client, bufnr)
--                 -- disable fomatter feature, instead use fomatter plugin
--                 client.resolved_capabilities.document_formatting = false
--                 client.resolved_capabilities.document_range_formatting = false
--                 -- shortcuts
--                 local function buf_set_keymap(...)
--                     vim.api.nvim_buf_set_keymap(bufnr, ...)
--                 end
--                 require("keybindings").mapLSP(buf_set_keymap)
--             end,
--         })
--     end,

