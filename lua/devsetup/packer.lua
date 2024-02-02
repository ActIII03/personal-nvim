-- Only required if you have packer configured as `opt`
-- Initialize packer
vim.cmd([[packadd packer.nvim]])

local packer = require("packer")

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	require("devsetup.pkgs.utility")(use)
	require("devsetup.pkgs.ui")(use)
	require("devsetup.pkgs.themes")(use)
	require("devsetup.pkgs.lsp-tools")(use)
	require("devsetup.pkgs.linters-formatters")(use)
	require("devsetup.pkgs.debug-tools")(use)

	packer.compile()
end)
