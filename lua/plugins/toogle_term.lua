return {
	{
		-- TERMINAL
		"akinsho/toggleterm.nvim",
		version = "v2.*",
		config = function()
			require("toggleterm").setup()

			local Terminal = require("toggleterm.terminal").Terminal
			local htop = Terminal:new({
				cmd = "htop",
				hidden = true,
				direction = "float",
				close_on_exit = false,
			})

			-- NOTE: This is a global function so it can be called from the below mapping.
			function Htop_toggle()
				htop:toggle()
			end

			vim.api.nvim_set_keymap("n", "<leader>th", "<cmd>lua Htop_toggle()<CR>", {
				noremap = true,
				silent = true,
				desc = "toggle htop",
			})

			-- floating terminal
			vim.keymap.set(
				"n",
				"<leader>tf",
				"<Cmd>ToggleTerm direction=float<CR>",
				{ desc = "toggle floating terminal" }
			)

			-- horizontal terminal
			vim.keymap.set(
				"n",
				"<leader>tu",
				"<Cmd>ToggleTerm direction=horizontal size=15<CR>",
				{ desc = "toggle  horizontal terminal" }
			)
		end,
	},
}
