return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ty = {}, -- 👈 enable Astral ty LSP
        pyright = false
      },
    },
  },
}
