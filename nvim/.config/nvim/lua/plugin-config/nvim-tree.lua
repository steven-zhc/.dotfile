-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("Cannot find plugin: nvim-tree")
  return
end

local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup {
  disable_netrw = true,
  git = {
    enable = true
  },
  filters = {
    custom = { "node_modules" },
  },
  view = {
    width = 34,
    mappings = {
      custom_only = true,
      list = list_keys
    }
  },

}

require'nvim-web-devicons'.get_icons()
