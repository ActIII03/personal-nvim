--https://github.com/mfussenegger/nvim-dap/
-- Import required modules
local dap = require("dap")

-- DAP key mappings
vim.api.nvim_set_keymap("n", "<leader>du", ':lua require"dap".continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", ':lua require"dap".step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>di", ':lua require"dap".step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>df", ':lua require"dap".step_out()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>tb",
	':lua require"dap".toggle_breakpoint()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>db", ':lua require"dap".set_breakpoint()<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>lp",
	':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<Leader>dr", ':lua require"dap".repl.open()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>dl", ':lua require"dap".run_last()<CR>', { noremap = true, silent = true })
