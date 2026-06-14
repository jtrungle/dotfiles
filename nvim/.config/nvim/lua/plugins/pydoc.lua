return {
  "jtrungle/pydoc.nvim",
  config = function()
    require("pydoc").setup({ python_cmd = "python3" })
  end,
}
