return {
  "jtrungle/visibuffer.nvim",
  config = function()
    require("visibuffer").setup({
      auto_quit = true,
    })
  end,
}
