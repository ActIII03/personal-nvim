local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Automatically imports all files in lua/devsetup/pkgs/*.lua
    { import = "devsetup.pkgs" },
  },
  checker = { enabled = true },
  performance = {
    rtp = {
      reset = true,
    },
  },
})
