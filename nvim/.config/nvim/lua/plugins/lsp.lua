return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyrefly = {
          enabled = true
        }, -- 👈 enable Astral ty LSP
        pyright = false
      },
    },
  },
}
