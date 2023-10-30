return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "github/copilot.vim",
  --   event = { "User AstroFile" },
  --   opts = { suggestion = { auto_trigger = true, debounce = 150 } },
  -- },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "zbirenbaum/copilot.lua" },
  --   opts = function(_, opts)
  --     local cmp, copilot = require "cmp", require "copilot.suggestion"
  --     local snip_status_ok, luasnip = pcall(require, "luasnip")
  --     if not snip_status_ok then return end
  --     local function has_words_before()
  --       local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  --       return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
  --     end
  --     if not opts.mapping then opts.mapping = {} end
  --     opts.mapping["<C-Space>"] = cmp.mapping(function(fallback)
  --       if copilot.is_visible() then
  --         copilot.accept()
  --       elseif cmp.visible() then
  --         cmp.select_next_item()
  --       elseif luasnip.expand_or_jumpable() then
  --         luasnip.expand_or_jump()
  --       elseif has_words_before() then
  --         cmp.complete()
  --       else
  --         fallback()
  --       end
  --     end, { "i", "s" })
  --
  --     opts.mapping["<C-x>"] = cmp.mapping(function()
  --       if copilot.is_visible() then copilot.next() end
  --     end)
  --
  --     opts.mapping["<C-z>"] = cmp.mapping(function()
  --       if copilot.is_visible() then copilot.prev() end
  --     end)
  --
  --     -- opts.mapping["<C-right>"] = cmp.mapping(function()
  --     --   if copilot.is_visible() then copilot.accept_word() end
  --     -- end)
  --
  --     opts.mapping["<C-,>"] = cmp.mapping(function()
  --       if copilot.is_visible() then copilot.accept_word() end
  --     end)
  --
  --     -- opts.mapping["<S-down>"] = cmp.mapping(function()
  --     --   if copiCot.is_visible() then copilot.accept_line() end
  --     -- end)
  --
  --     opts.mapping["<C-.>"] = cmp.mapping(function()
  --       if copilot.is_visible() then copilot.accept_line() end
  --     end)
  --
  --     -- opts.mapping["<C-c>"] = cmp.mapping(function()
  --     --   if copilot.is_visible() then copilot.dismiss() end
  --     -- end)
  --
  --     return opts
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function ()
    --   require("todo-comments").setup{}
    -- end
    opts = {},
    -- event = {"UserAstroFile", "VeryLazy", "BufEnter *.lua", "InsertEnter", "LspAttach"},
    event = { "User AstroFile" },
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>O", "<cmd>TodoTelescope<cr>", desc = "Open todo telescope" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "js", "typescript" },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { "~/.config/astronvim/lua/user/snippets" },
      }
    end,
  },

  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest",
    },
    event = { "User AstroFile" },
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function() return vim.fn.getcwd() end,
          },
        },
      }
    end,
    keys = {
      {
        "<leader>Tl",
        function() require("neotest").run.run_last() end,
        desc = "Run Last Test",
      },
      {
        "<leader>Tn",
        function() require("neotest").run.run() end,
        desc = "Run Nearest Test",
      },
      {
        "<leader>Td",
        function() require("neotest").run.run { strategy = "dap" } end,
        desc = "Debug Nearest Test",
      },
      {
        "<leader>Tf",
        function() require("neotest").run.run(vim.fn.expand "%") end,
        desc = "Run Current File Test",
      },
      {
        "<leader>Ts",
        function() require("neotest").summary.open() end,
        desc = "Display Summary",
      },
      {
        "<leader>To",
        function() require("neotest").output.open { enter = true } end,
        desc = "Open Output Panel",
      },
    },
  },
}
