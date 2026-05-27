-- File: ~/.config/nvim/lua/devsetup/pkgs/lsp-tools.lua

return function(use)
	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Treesitter for better syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		branch = "master", -- Forces the stable legacy version
		run = ":TSUpdate",
	})

	-- LSP (Language Server Protocol)
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- These are the plugins lsp-zero directly manages for LSP
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			-- *** REMOVE THESE LINES FROM HERE ***
			-- { "hrsh7th/nvim-cmp" },
			-- { "hrsh7th/cmp-nvim-lsp" },
			-- { "L3MON4D3/LuaSnip" },
			-- { "onsails/lspkind-nvim" },
		},
		config = function()
			-- *** REMOVE THE lspkind require and CMP setup FROM HERE ***
			-- local lspkind = require("lspkind") -- REMOVE THIS LINE
			local lsp_zero = require("lsp-zero")
			local lspconfig = require("lspconfig")

			-- Define the on_attach handler. This function sets up your keymaps
			-- and other buffer-local configurations when an LSP client attaches.
			lsp_zero.on_attach(function(client, bufnr)
				local opts = { buffer = bufnr, remap = false }

				vim.keymap.set("n", "gd", function()
					vim.lsp.buf.definition()
				end, opts)
				vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- Using Lspsaga's hover_doc
				vim.keymap.set("n", "<leader>vws", function()
					vim.lsp.buf.workspace_symbol()
				end, opts)
				vim.keymap.set("n", "<leader>vd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- Using Lspsaga's diagnostics
				vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
				vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
				vim.keymap.set("n", "<leader>vca", function()
					vim.lsp.buf.code_action()
				end, opts)
				vim.keymap.set("n", "<leader>vrr", function()
					vim.lsp.buf.references()
				end, opts)
				vim.keymap.set("n", "<leader>vrn", function()
					vim.lsp.buf.rename()
				end, opts)
				vim.keymap.set("i", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts)

				-- Lspsaga Peek Definition
				vim.keymap.set("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>", opts)
			end)

			lsp_zero.preset("recommended")

			require("mason").setup()

			require("mason-lspconfig").setup({
				automatic_setup = true,
				ensure_installed = {
					"lua_ls",
					"eslint",
					"tailwindcss",
					"ruff",
					"pyright",
				},
				handlers = {
					-- This is where lsp_zero automatically connects LSP servers
					-- and applies the on_attach function
					lsp_zero.default_setup,
				},
			})
		end, -- END of config function for lsp-zero.nvim
	})

	use({ "gfanto/fzf-lsp.nvim" })

	-- Enhance grepping
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
		requires = { "nvim-telescope/telescope.nvim" },
	})

	-- nvim-dev/lspsaga.nvim setup
	use({
		"nvimdev/lspsaga.nvim",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("lspsaga").setup({
				definition = { display = "float", keys = { quit = "q" } },
				hover = { enable = true, preview_width = 0.5, preview_height = 0.5 },
				finder_action_keys = {},
				ui = { border = "rounded" },
			})
		end,
	})
end
