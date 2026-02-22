return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",
      ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<Esc>"] = { "hide", "fallback" },
    },
    completion = { list = { selection = {
      preselect = false,
    } } },
  },
}
