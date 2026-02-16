-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Yank/paste uses system clipboard
vim.opt.clipboard = "unnamedplus"
vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_python_lsp = "basedpyright"

-- Configure basedpyright settings
vim.lsp.config('basedpyright', {
  settings = {
    basedpyright = {
      typeCheckingMode = "basic",
      disableOrganizeImports = true,
      reportUnusedImport = false,
      reportUnusedVariable = false,
      reportMissingTypeStubs = false,
      reportOptionalMemberAccess = false,
      reportOptionalSubscript = false,
      reportPrivateImportUsage = false,
      reportUnknownArgumentType = false,
      reportUnknownLambdaType = false,
      reportUnknownMemberType = false,
      reportUnknownParameterType = false,
      reportUnknownVariableType = false,
      reportUnnecessaryTypeIgnoreComment = false,
    },
  },
})

vim.lsp.enable('basedpyright')
