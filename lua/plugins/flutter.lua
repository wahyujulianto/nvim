return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    require("flutter-tools").setup({
      ui = {
        border = "rounded",
        notification_style = "plugin",
      },
      decorations = {
        statusline = { app_version = true },
      },
      debuggerr = {
        enabled = true,
        run_via_dap = true,
        exception_breakpoints = {},
      },
      widget_guides = {
        enabled = true,
      },
    })
  end,
}
