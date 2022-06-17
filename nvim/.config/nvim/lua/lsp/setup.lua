require("nvim-lsp-installer").setup({
  automatic_installation = true,
})
local lspconfig = require("lspconfig")

-- { key: server_name， value: config_file }
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  sumneko_lua = require("lsp.config.lua"), -- lua/lsp/config/lua.lua
  bashls = require("lsp.config.bash"),
  jsonls = require("lsp.config.json"),
  tsserver = require("lsp.config.tsserver"),
  yamlls = require("lsp.config.yamlls"),
  remark_ls = require("lsp.config.markdown"),
  purescriptls = require("lsp.config.purescriptls"),
  dhall_lsp_server = "true",
}

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- custormized settings by on_setup method
    config.on_setup(lspconfig[name])
  else
    -- default config
    lspconfig[name].setup({})
  end
end
