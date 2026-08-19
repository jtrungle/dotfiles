return {
  "emrearmagan/atlas.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional but recommended
    "MeanderingProgrammer/render-markdown.nvim", -- optional but recommended
    "esmuellert/codediff.nvim", -- optional (PullRequest diff)
    "sindrets/diffview.nvim", -- optional (PullRequest diff - alternative)
  },
  opts = {
    pulls = {
      providers = {
        ---@type AtlasGitLabPullsConfig
        gitlab = {
          base_url = "https://code.droneshield.com",
          token = "dspat-8UtozMUZGqVNR9mwYVIG7m86MQp1OjNkNgk.01.0z00srwhb",
          cache_ttl = 300,

          ---@type AtlasGitLabPullsViewConfig[]
          views = {
            {
              name = "Assigned",
              key = "1",
              scope = "assigned_to_me",
            },
            {
              name = "Reviewing",
              key = "3",
              scope = "all",
              extra_params = { reviewer_id = "4362" },
            },
            {
              name = "de-data-capture",
              key = "4",
              group = "droneshield/algorithms/data-engineering/de-data-capture",
            },
            {
              name = "data-engineering",
              key = "5",
              group = "droneshield/algorithms/data-engineering",
            },
          },

          bookmarks = {
            key = "S", -- default
            label = "Search", -- default
            items = {
              ["Reviewing"] = { scope = "all", extra_params = { reviewer_id = "Me" } },
              ["Merged by me"] = { scope = "all", state = "merged", author_username = "me" },
            },
          },
        },
      },
    },
    issues = {
      providers = {
        ---@type AtlasGitLabIssuesConfig
        gitlab = {}, -- See configuration below
      },
    },
  },
  keys = {
    {
      "<leader>pr",
      "<cmd>AtlasPulls gitlab<CR>",
      desc = "GitLab PR Requests",
    },
    {
      "<leader>pR",
      "<cmd>AtlasCreatePR<CR>",
      desc = "GitLab Create PR",
    },
  },
}
