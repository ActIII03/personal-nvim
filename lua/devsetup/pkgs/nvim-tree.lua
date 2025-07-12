-- File: ~/.config/nvim/lua/devsetup/pkgs/nvim-tree.lua

-- This file should RETURN a function that takes 'use' as an argument for Packer
return function(use)
    use({
        "nvim-tree/nvim-tree.lua",
        tag = "v1", -- Or a specific commit/branch if you prefer
        requires = {
            "nvim-tree/nvim-web-devicons", -- Required for icons
        },
        config = function()
            -- Now, place your nvim-tree setup options here
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
                    -- exclude = { ".git", "node_modules", ".cache" }, -- Example exclusion
                },
                actions = {
                    open_file = {
                        quit_on_open = true, -- This is the setting to prevent auto-opening
                        -- You can also add other actions like "cd" to change directory on open
                    },
                    -- You might want to add custom actions or disable some defaults
                    -- For example, to prevent default window resizing:
                    -- window_picker = {
                    --     enable = true,
                    --     exclude = {
                    --         filetype = { "packer", "NvimTree", "lazy", "mason" },
                    --         buftype = { "terminal" },
                    --     },
                    -- },
                },
                -- Enable diagnostics in nvim-tree
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
    })
end
