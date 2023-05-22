-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fw", function()
  require("telescope.builtin").find_files({
    search_file = vim.fn.expand("<cword>"),
  })
end, { noremap = true, silent = true, desc = "Word (root dir)" })

vim.keymap.set(
  "n",
  "<leader>f<tab>",
  "<cmd>Neotree focus<cr>",
  { noremap = true, silent = true, desc = "Neotree focus" }
)

vim.keymap.set(
  "n",
  "<leader>'",
  "<cmd>Telescope resume<cr>",
  { noremap = true, silent = true, desc = "Telescope resume" }
)

vim.keymap.set("n", "gs", function()
  require("telescope.builtin").lsp_workspace_symbols({
    query = vim.fn.expand("<cword>"),
  })
end, { noremap = true, silent = true, desc = "Telescope resume" })
