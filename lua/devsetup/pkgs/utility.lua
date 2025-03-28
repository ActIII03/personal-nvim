return function(use)
	-- Utility Plugins
	use("nvim-lua/plenary.nvim") -- Common utilities required by many plugins
	use("mbbill/undotree") -- Undo history visualizer
	use("tpope/vim-fugitive") -- Git integration

	use("tamago324/telescope-openbrowser.nvim")
	use("tyru/open-browser.vim")
end
