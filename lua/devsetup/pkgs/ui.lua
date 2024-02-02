return function(use)
	-- UI Enhancements
	use("nvim-tree/nvim-web-devicons") -- File icons
	use("echasnovski/mini.base16") -- Theme support for nvim-tree and status line

	-- Statusbar
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
			"antosha417/nvim-lsp-file-operations",
			"echasnovski/mini.base16",
		},
	})
end
