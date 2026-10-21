return {
	-- UI Enhancements
	"nvim-tree/nvim-web-devicons", -- File icons
	"echasnovski/mini.base16", -- Theme support for status line and trees

	-- Startup menu
	{
		"startup-nvim/startup.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("startup").setup()
		end,
	},

	-- Statusbar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"utilyre/barbecue.nvim",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("barbecue").setup()
		end,
	},

	{ "nvim-neotest/nvim-nio" },

	-- Pin buffer
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
