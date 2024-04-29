return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local autopairs = require("nvim-autopairs")
      autopairs.setup({
        check_ts = true,
        ts_config = {
          lua = { "string" },
          javascript = { "template_string" },
        },
      })

      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
  { "max397574/better-escape.nvim", opts = {} },
  {
    "echasnovski/mini.bufremove",
    version = "*",
    keys = {
      {
        "<leader>x",
        function()
          require("mini.bufremove").delete()
        end,
      },
    },
  },
  {
    "ray-x/web-tools.nvim",
    opts = {},
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      lazy = false,
    },
  },
  {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
      require("rainbow-delimiters.setup").setup({})
    end,
  },
  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, "<leader>ea", require("nvim-emmet").wrap_with_abbreviation)
    end,
  },
}
