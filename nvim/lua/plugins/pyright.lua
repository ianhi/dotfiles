return {
  -- Disable pyright since we're using ruff
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          enabled = false,
        },
      },
    },
  },
}

