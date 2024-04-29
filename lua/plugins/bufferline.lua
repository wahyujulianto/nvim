return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<s-tab>", "<cmd>BufferLineCyclePrev<cr>" },
    { "<tab>", "<cmd>BufferLineCycleNext<cr>" },
  },
  opts = {
    options = {
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)
  end,
}
