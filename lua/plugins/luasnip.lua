return {
	{
		"hrsh7th/cmp-nvim-lsp",
		cond = function()
			return require("lazyvim.util").has("nvim-cmp")
		end,
	},
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"hrsh7th/cmp-path",
	{
		"L3MON4D3/LuaSnip",
		lazy = false,
		dependencies = { "saadparwaiz1/cmp_luasnip" },
		keys = {
			{
				"<leader><leader>;",
				function()
					require("luasnip").jump(1)
				end,
				desc = "Jump forward a snippet placement",
				mode = "i",
				noremap = true,
				silent = true,
			},
			{
				"<leader><leader>,",
				function()
					require("luasnip").jump(-1)
				end,
				desc = "Jump backward a snippet placement",
				mode = "i",
				noremap = true,
				silent = true,
			},
		},
		config = function()
			require("luasnip.loaders.from_lua").load({ paths = "~/.snippets" })
		end,
	},
}
