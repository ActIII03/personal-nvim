require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all"
	ensure_installed = {
		"bash",
		"c",
		"dockerfile",
		"git_rebase",
		"git_config",
		"go",
		"http",
		"html",
		"json",
		"lua",
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
	},

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
