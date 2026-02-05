return {
  -- add gruvbox
  { "samharju/synthweave.nvim" },
  {
    "scottmckendry/cyberdream.nvim",

    config = function()
      require("cyberdream").setup({
        transparent=true
      })
    end
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "synthweave",
      -- colorscheme = "cyberdream",
    },
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        themes = { {
          name = "cyberdream",
          colorscheme = "cyberdream",
        },
          {
            name = "synthweave",
            colorscheme = "synthweave",
          } },
        -- add the config here
      })
    end
  }
}
