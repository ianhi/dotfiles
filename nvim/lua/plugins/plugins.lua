return {
  {
    "mpiannucci/copy-context",
    dir = "/Users/ian/Documents/dev/copy-context", -- Use local path
    opts = {
      disable_default_keymap = true,
    },
    keys = {
      { "<leader>cY", "<cmd>CopyFileContext<cr>", mode = "n", desc = "Copy file context" },
      { "<leader>cy", "<cmd>CopyLineContext<cr>", mode = { "n", "v" }, desc = "Copy selection/line context" },
      { "<leader>cgy", "<cmd>CopyGitHubPermalink<cr>", mode = { "n", "v" }, desc = "Copy GitHub permalink" },
      { "<leader>cgY", "<cmd>CopyGitHubFile<cr>", mode = "n", desc = "Copy GitHub file link" },
    },
  },
  {
    "benomahony/uv.nvim",
    -- Optional filetype to lazy load when you open a python file
    -- ft = { python }
    -- Optional dependency, but recommended:
    -- dependencies = {
    --   "folke/snacks.nvim"
    -- or
    --   "nvim-telescope/telescope.nvim"
    -- },
    opts = {
      picker_integration = true,
    },
  },
}
