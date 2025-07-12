-- File: ~/.config/nvim/lua/devsetup/pkgs/completion.lua

return function(use)
	-- nvim-cmp: The completion engine
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source for cmp
			"L3MON4D3/LuaSnip", -- Snippet engine
			"saadparwaiz1/cmp_luasnip", -- cmp source for LuaSnip (optional but common)
			"hrsh7th/cmp-buffer", -- Buffer words source
			"hrsh7th/cmp-path", -- File path source
			"hrsh7th/cmp-nvim-lua", -- Neovim Lua API source
			"onsails/lspkind-nvim", -- Icons for completion items
			-- Add any other cmp sources you want here (e.g., cmp-vsnip, cmp-tabnine, etc.)
			-- "rafamadriz/friendly-snippets", -- Collection of common snippets
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			local lspkind = require("lspkind") -- lspkind is now guaranteed to be loaded

			cmp.setup({
				-- Use lspkind for formatting (icons)
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text", -- show only symbol then text (text in bold, symbol in normal font)
						maxwidth = 50,
						ellipsis_char = "...",
						show_labelDetails = true, -- Show detailed info if provided by LSP
					}),
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-u>"] = cmp.mapping.scroll_docs(-4),
					["<C-d>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({
						behavior = cmp.ConfirmBehavior.Replace,
						select = true,
					}),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = {
					{ name = "nvim_lsp" }, -- LSP completions
					{ name = "luasnip" }, -- Snippets
					{ name = "buffer" }, -- Words from buffer
					{ name = "path" }, -- File paths
					{ name = "nvim_lua" }, -- Neovim Lua API
				},
				-- You had these from before, keep them for good looks
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				experimental = {
					ghost_text = true,
				},
			})
		end,
	})

	use({
		"L3MON4D3/LuaSnip",
	})

	use({
		"rafamadriz/friendly-snippets",
		requires = { "L3MON4D3/LuaSnip" }, -- friendly-snippets depends on LuaSnip
		config = function()
			-- It's common to load friendly-snippets here
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	})
end
