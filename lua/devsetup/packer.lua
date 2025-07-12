local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	vim.notify("Packer not loaded correctly: " .. tostring(packer), vim.log.levels.ERROR)
	return
end

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	require("devsetup.pkgs.nvim-tree")(use)
	require("devsetup.pkgs.utility")(use)
	require("devsetup.pkgs.ui")(use)
	require("devsetup.pkgs.themes")(use)
	require("devsetup.pkgs.lsp-tools")(use)
	require("devsetup.pkgs.linters-formatters")(use)
	require("devsetup.pkgs.debug-tools")(use)
	require("devsetup.pkgs.completion")(use)

	if packer_bootstrap then
		require("packer").sync()
	end
end)
