return {
  -- Disable vim-tmux-navigator (replaced by zellij-nav)
  { "christoomey/vim-tmux-navigator", enabled = false },

  -- Seamless navigation between neovim splits and zellij panes
  {
    "swaits/zellij-nav.nvim",
    lazy = true,
    event = "VeryLazy",
    keys = {
      { "<C-h>", "<cmd>ZellijNavigateLeftTab<cr>", desc = "Navigate left (zellij/vim)" },
      { "<C-j>", "<cmd>ZellijNavigateDown<cr>", desc = "Navigate down (zellij/vim)" },
      { "<C-k>", "<cmd>ZellijNavigateUp<cr>", desc = "Navigate up (zellij/vim)" },
      { "<C-l>", "<cmd>ZellijNavigateRightTab<cr>", desc = "Navigate right (zellij/vim)" },
    },
    opts = {},
  },
}
