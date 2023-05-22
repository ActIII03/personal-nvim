return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "FUCK YOU",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
	end,
}
