return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        -- globally show hidden/ignored
        hidden = true,
        ignored = false,
        -- per-source overrides
        sources = {
          files = {
            hidden = true,
            ignored = false,
          },
          explorer = {
            hidden = true,
            ignored = false,
          },
        },
      },
      explorer = {
        -- optional: other settings for the tree if you use it
        hidden = true,
        ignored = false,
      },
    },
  },
}
