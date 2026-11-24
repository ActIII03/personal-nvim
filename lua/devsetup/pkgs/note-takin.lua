-- lua/note-takin.lua
-- Unified Neovim note-taking config: Obsidian + Markdown Rendering + Kitty Images + LaTeX

local vault_path = "/home/aminlib3r/Documents/me_notes"

-- Required for obsidian.nvim & render-markdown.nvim UI concealment
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})

return {
  -- 1. Core Vault Management (obsidian.nvim)
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "Obsidian: New Note" },
      { "<leader>oh", "<cmd>edit /home/aminlib3r/Documents/me_note/4 - Indexes/Home.md<cr>", desc = "Obsidian: Open Home Map" },
      { "<leader>oo", "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian: Quick Switch" },
      { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "Obsidian: Search Vault" },
      { "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Obsidian: Daily Note" },
      { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Obsidian: Backlinks" },
    },
    opts = {
      workspaces = {
        {
          name = "me_note",
          path = vault_path,
        },
      },

      -- Aligned with your numbered folder structure
      notes_subdir = "1 - Rough Notes",
      new_notes_location = "notes_subdir",

      daily_notes = {
        folder = "7 - Productivity/Journal",
        date_format = "%Y-%m-%d",
        template = "Daily Note.md",
      },

      templates = {
        folder = "5 - Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },

      -- Disable obsidian.nvim's built-in UI so render-markdown.nvim handles rendering cleanly
      ui = {
        enable = false,
      },

      -- Clean filename generation (uses title directly instead of random timestamps)
      note_id_func = function(title)
        if title ~= nil then
          return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          return tostring(os.time())
        end
      end,
    },
  },

  -- 2. Live Markdown & LaTeX Rendering (render-markdown.nvim)
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      heading = {
        sign = false,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      checkbox = {
        enabled = true,
        custom = {
          in_progress = { raw = "[/]", rendered = "󰥔 ", highlight = "RenderMarkdownWarn" },
          cancelled = { raw = "[-]", rendered = "󰜺 ", highlight = "RenderMarkdownError" },
        },
      },
      -- Renders inline ($...$) and block ($$...$$) LaTeX via pylatexenc (or Treesitter fallback)
      latex = {
        enabled = true,
        converter = "latex2text",
        highlight = "RenderMarkdownMath",
        top_pad = 0,
        bottom_pad = 0,
      },
    },
  },

  -- 3. Inline Image Rendering via Kitty Graphics Protocol (image.nvim)
  {
    "3rd/image.nvim",
    ft = { "markdown" },
    opts = {
      backend = "kitty",
      processor = "magick_cli", -- Uses system ImageMagick (avoids luarocks build issues)
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown" },
        },
      },
      max_width = 100,
      max_height = 24,
      max_height_window_percentage = 40,
      window_overlap_clear_enabled = true,
    },
  },

  -- 4. Clipboard Image Pasting into Markdown (img-clip.nvim)
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>op", "<cmd>PasteImage<cr>", desc = "Obsidian: Paste Image from Clipboard" },
    },
    opts = {
      default = {
        dir_path = vault_path .. "/99 - Attachments",
        use_absolute_path = false,
        relative_to_current_file = false,
        prompt_for_file_name = true,
        template = "![[$FILE_NAME]]", -- Obsidian wikilink format
      },
    },
  },
}
