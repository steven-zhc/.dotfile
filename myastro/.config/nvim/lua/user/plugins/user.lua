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
