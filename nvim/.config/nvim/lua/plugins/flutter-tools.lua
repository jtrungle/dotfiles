return {
  "akinsho/flutter-tools.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  enabled = false,
  config = function()
    require("flutter-tools").setup({
      widget_guides = {
        enabled = true, -- Turn on widget guides
      },
    })
  end,
}
