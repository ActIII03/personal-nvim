return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "antosha417/nvim-lsp-file-operations",
      "echasnovski/mini.base16",
    },
    config = function()
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        disable_netrw = true,
        hijack_netrw = true,
        diagnostics = {
          enable = true,
          show_on_dirs = true,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
      })
    end,
  },
}
