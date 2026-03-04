return {
  url = "https://codeberg.org/mraspaud/smellycat.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("smellycat").setup({
      debounce_ms = 500,
      max_concurrent_lsp_requests = 4,
      smells = {
        arrow_code = { enabled = true, max_depth = 4 },
        brain_method = { enabled = true, max_lines = 50, max_branches = 10 },
        long_parameter_list = { enabled = true, max_params = 5 },
        data_clumps = { enabled = true, min_clump_size = 3, min_occurrences = 2 },
        feature_envy = { enabled = true, external_call_ratio_threshold = 0.75 },
        god_object = { enabled = true, max_methods = 20, max_references = 100 },
        -- lazy_class = { enabled = true, min_methods = 2 },
        message_chains = { enabled = true, max_chain_length = 3 },
        switch_statements = { enabled = true, min_cases = 5 },
        data_class = { enabled = true, min_non_dunder_methods = 1 },
        middle_man = { enabled = true, min_delegation_ratio = 0.75 },
        inappropriate_intimacy = { enabled = true, min_private_accesses = 1 },
      },
    })
  end,
}
