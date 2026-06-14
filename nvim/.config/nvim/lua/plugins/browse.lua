return {
  "lalitmee/browse.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    {
      "<leader>Bs",
      function()
        require("browse").input_search()
      end,
      desc = "Browse search with provider",
    },
    {
      "<leader>Bm",
      function()
        require("browse").open_manual_bookmarks()
      end,
      desc = "Browse manual bookmarks",
    },
    {
      "<leader>BM",
      function()
        require("browse").open_browser_bookmarks()
      end,
      desc = "Browse browser bookmarks",
    },
    {
      "<leader>Bd",
      function()
        require("browse").devdocs.search()
      end,
      desc = "Browse Devdocs",
    },
    {
      "<leader>BD",
      function()
        require("browse").devdocs.search_with_filetype()
      end,
      desc = "Browse Devdocs with filetype",
    },
  },
  opts = {
    browser_bookmarks = {
      enabled = true,
      browsers = {
        chrome = true,
        firefox = false,
        safari = false,
        edge = true,
      },
      group_by_folder = true,
      auto_detect = true,
    },
  },
}
