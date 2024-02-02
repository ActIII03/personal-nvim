require("devsetup")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

vim.cmd([[colorscheme calvera]])

vim.api.nvim_create_user_command("Day", function()
	vim.opt.background = "light"
	vim.cmd("colorscheme gruvbox")
end, {})

vim.api.nvim_create_user_command("Night", function()
	vim.opt.background = "dark"
	vim.cmd("colorscheme onedark")
end, {})
