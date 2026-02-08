return {
  -- add gruvbox
  { "samharju/synthweave.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly" },
  {
    "scottmckendry/cyberdream.nvim",

    config = function()
      require("cyberdream").setup({
        transparent = true
      })
    end
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        style = 'warm'
      }
      require('onedark').load()
    end
  },
  {
    "eldritch-theme/eldritch.nvim",
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
        themes = {
          {
          name = "cyberdream",
          colorscheme = "cyberdream",
          },
          {
          name = "eldritch",
          colorscheme = "eldritch",
          },
          {
            name = "synthweave",
            colorscheme = "synthweave",
          },
          {
            name = "onedark",
            colorscheme = "onedark",
          },
          {
            name = "moonfly",
            colorscheme = "moonfly",
          }
        },
        -- add the config here
      })
    end
  }
}
