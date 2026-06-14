return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ty = {
          enabled = true
        }, -- 👈 enable Astral ty LSP
        pyright = false
      },
    },
  },
}
