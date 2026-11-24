-- ~/.config/nvim/after/plugin/treesitter.lua
require("nvim-treesitter").setup({
  install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
  "bash",
  "c",
  "dockerfile",
  "git_rebase",
  "git_config",
  "go",
  "http",
  "html",
  "javascript",
  "json",
  "latex",
  "lua",
  "markdown",
  "markdown_inline",
  "perl",
  "python",
  "query",
  "regex",
  "rust",
  "sql",
  "terraform",
  "tsx",
  "vim",
  "vimdoc",
  "yaml",
})

-- Replaces highlight = { enable = true } using Neovim's native Treesitter
vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
