return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        -- globally show hidden/ignored
        hidden = true,
        ignored = true,
        -- per-source overrides
        sources = {
          files = {
            hidden = true,
            ignored = true,
          },
          explorer = {
            hidden = true,
            ignored = true,
          },
        },
      },
      explorer = {
        -- optional: other settings for the tree if you use it
        hidden = true,
        ignored = true,
      },
    },
  },
}
