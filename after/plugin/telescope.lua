-- -- Initialize Telescope with the fzf extension
-- require("telescope").setup({
-- 	extensions = {
-- 		fzf = {
-- 			fuzzy = false, -- false will only do exact matching
-- 			override_generic_sorter = true, -- override the generic sorter
-- 			override_file_sorter = true, -- override the file sorter
-- 			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
-- 			-- the default case_mode is "smart_case"
-- 		},
-- 	},
-- })
--
-- -- Load the fzf extension
-- require("telescope").load_extension("fzf")
--
-- -- Require the builtin Telescope functions
-- local builtin = require("telescope.builtin")
--
-- -- Key mappings for Telescope
-- vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
-- vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
--
-- -- Key mapping for grep_string
-- vim.keymap.set("n", "<leader>ps", function()
-- 	local word = vim.fn.expand("<cword>")
-- 	print("Searching for word: " .. word) -- Debugging: Print the word to search
-- 	if word ~= "" then
-- 		builtin.grep_string({ search = word })
-- 	else
-- 		print("No word under cursor")
-- 	end
-- end)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
