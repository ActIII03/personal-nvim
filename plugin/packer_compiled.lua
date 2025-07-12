-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/atouche/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/atouche/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/atouche/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/atouche/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/atouche/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/opt/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["calvera-dark.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/calvera-dark.nvim",
    url = "https://github.com/yashguptaz/calvera-dark.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\2O\0\1\4\0\6\0\t6\1\0\0'\2\1\0B\1\2\0029\1\2\0015\2\4\0009\3\3\0=\3\5\2B\1\2\1K\0\1\0\nbufnr\1\0\0\bbuf\vformat\fconform\frequireJ\0\0\2\1\2\0\5-\0\0\0009\0\0\0005\1\1\0B\0\2\1K\0\1\0\0¿\1\0\3\nasync\1\17lsp_fallback\2\15timeout_ms\3Ù\3\vformatç\b\1\0\6\0?\0F6\0\0\0'\1\1\0B\0\2\0029\1\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\3=\0031\2B\1\2\0016\0012\0009\0013\0019\0014\1'\0025\0005\0036\0003\0047\0=\0048\3B\1\3\0016\0012\0009\0019\0019\1:\0015\2;\0'\3<\0003\4=\0005\5>\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc*Format file or range (in visual mode)\0\14<leader>l\1\3\0\0\6n\6v\bset\vkeymap\rcallback\0\1\0\1\fpattern\6*\16BufWritePre\24nvim_create_autocmd\bapi\bvim\21formatters_by_ft\tscss\1\3\0\0\14prettierd\rprettier\bcss\1\3\0\0\14prettierd\rprettier\ttoml\1\2\0\0\ntaplo\tyaml\1\2\0\0\fyamlfix\trust\1\2\0\0\frustfmt\nproto\1\2\0\0\bbuf\tbash\1\2\0\0\rbeautysh\thtml\1\2\0\0\19htmlbeautifier\berb\1\2\0\0\19htmlbeautifier\rmarkdown\1\3\0\0\14prettierd\rprettier\truby\1\2\0\0\15standardrb\vkotlin\1\2\0\0\vktlint\tjava\1\2\0\0\23google-java-format\fgraphql\1\3\0\0\14prettierd\rprettier\tjson\1\3\0\0\14prettierd\rprettier\20typescriptreact\1\3\0\0\14prettierd\rprettier\20javascriptreact\1\3\0\0\14prettierd\rprettier\15typescript\1\3\0\0\14prettierd\rprettier\15javascript\1\3\0\0\14prettierd\rprettier\vsvelte\1\3\0\0\14prettierd\rprettier\vpython\1\2\0\0\nblack\blua\1\0\0\1\2\0\0\vstylua\1\0\1\21stop_after_first\2\nsetup\fconform\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/opt/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\2M\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf-lsp.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/fzf-lsp.nvim",
    url = "https://github.com/gfanto/fzf-lsp.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\0026\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim<\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\21workspace_symbol\bbuf\blsp\bvim7\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim2\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim:\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvim£\5\1\2\b\0\29\0[5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\6\0003\6\a\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\b\0'\6\t\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\n\0003\6\v\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\f\0'\6\r\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\14\0'\6\15\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\16\0'\6\17\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\18\0003\6\19\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\20\0003\6\21\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\22\0003\6\23\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\24\0'\5\25\0003\6\26\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\27\0'\6\28\0\18\a\2\0B\3\5\1K\0\1\0%<cmd>Lspsaga peek_definition<CR>\15<leader>pd\0\n<C-h>\6i\0\16<leader>vrn\0\16<leader>vrr\0\16<leader>vca*<cmd>Lspsaga diagnostic_jump_next<CR>\a]d*<cmd>Lspsaga diagnostic_jump_prev<CR>\a[d+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>vd\0\16<leader>vws\31<cmd>Lspsaga hover_doc<CR>\6K\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1_\0\2\5\1\3\0\t9\2\0\0+\3\1\0=\3\1\2-\2\0\0009\2\2\2\18\3\0\0\18\4\1\0B\2\3\1K\0\1\0\0¿\14on_attach\24document_formatting\24server_capabilitiesƒ\3\1\0\b\0\24\0,6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0003\3\4\0B\2\2\0019\2\5\0'\3\6\0B\2\2\0016\2\0\0'\3\a\0B\2\2\0029\2\b\2B\2\1\0016\2\0\0'\3\t\0B\2\2\0029\2\b\0025\3\n\0005\4\v\0=\4\f\0034\4\3\0009\5\r\0>\5\1\4=\4\14\3B\2\2\0019\2\15\0019\2\b\0025\3\17\0003\4\16\0=\4\3\0039\4\18\0019\4\19\4'\5\20\0'\6\21\0'\a\22\0B\4\4\2=\4\23\3B\2\2\0012\0\0ÄK\0\1\0\rroot_dir\t.git\18tsconfig.json\17package.json\17root_pattern\tutil\1\0\0\0\rtsserver\rhandlers\18default_setup\21ensure_installed\1\a\0\0\vlua_ls\veslint\16tailwindcss\truff\fpyright\rtsserver\1\0\1\20automatic_setup\2\20mason-lspconfig\nsetup\nmason\16recommended\vpreset\0\14on_attach\14lspconfig\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\2Û\1\0\0\4\0\r\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\b\0=\2\t\0014\2\0\0=\2\n\0015\2\v\0=\2\f\1B\0\2\1K\0\1\0\aui\1\0\1\vborder\frounded\23finder_action_keys\nhover\1\0\3\19preview_height\4\0ÄÄÄˇ\3\18preview_width\4\0ÄÄÄˇ\3\venable\2\15definition\1\0\0\tkeys\1\0\1\tquit\6q\1\0\1\fdisplay\nfloat\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mini.base16"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/mini.base16",
    url = "https://github.com/echasnovski/mini.base16"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expandö\1\0\1\2\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\3\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\2ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\2ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible≈\6\1\0\n\0002\0X6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0005\4\t\0005\5\a\0009\6\5\0025\a\6\0B\6\2\2=\6\b\5=\5\n\0045\5\f\0003\6\v\0=\6\r\5=\5\14\0049\5\15\0009\5\16\0059\5\17\0055\6\19\0009\a\15\0009\a\18\a)\b¸ˇB\a\2\2=\a\20\0069\a\15\0009\a\18\a)\b\4\0B\a\2\2=\a\21\0069\a\15\0009\a\22\aB\a\1\2=\a\23\0069\a\15\0009\a\24\a5\b\27\0009\t\25\0009\t\26\t=\t\28\bB\a\2\2=\a\29\0069\a\15\0003\b\30\0005\t\31\0B\a\3\2=\a \0069\a\15\0003\b!\0005\t\"\0B\a\3\2=\a#\6B\5\2\2=\5\15\0044\5\6\0005\6$\0>\6\1\0055\6%\0>\6\2\0055\6&\0>\6\3\0055\6'\0>\6\4\0055\6(\0>\6\5\5=\5)\0045\5-\0009\6*\0009\6+\0069\6,\6B\6\1\2=\6.\0059\6*\0009\6+\0069\6,\6B\6\1\2=\6/\5=\5+\0045\0050\0=\0051\4B\3\2\0012\0\0ÄK\0\1\0\17experimental\1\0\1\15ghost_text\2\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-d>\n<C-u>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\1\0\0\1\0\4\rmaxwidth\0032\tmode\16symbol_text\22show_labelDetails\2\18ellipsis_char\b...\15cmp_format\nsetup\flspkind\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\2\"\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\rtry_lint\"\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0¿\rtry_lintÀ\4\1\0\a\0$\0.6\0\0\0'\1\1\0B\0\2\0025\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\0015\2\18\0=\2\19\1=\1\2\0006\1\20\0009\1\21\0019\1\22\1'\2\1\0005\3\23\0B\1\3\0026\2\20\0009\2\21\0029\2\24\0025\3\25\0005\4\26\0=\1\27\0043\5\28\0=\5\29\4B\2\3\0016\2\20\0009\2\30\0029\2\31\2'\3 \0'\4!\0003\5\"\0005\6#\0B\2\5\0012\0\0ÄK\0\1\0\1\0\1\tdesc%Trigger linting for current file\0\15<leader>ll\6n\bset\vkeymap\rcallback\0\ngroup\1\0\0\1\4\0\0\rBufEnter\17BufWritePost\16InsertLeave\24nvim_create_autocmd\1\0\1\nclear\2\24nvim_create_augroup\bapi\bvim\truby\1\2\0\0\15standardrb\14terraform\1\2\0\0\vtflint\vkotlin\1\2\0\0\vktlint\vsvelte\1\2\0\0\reslint_d\20typescriptreact\1\2\0\0\reslint_d\20javascriptreact\1\2\0\0\reslint_d\15typescript\1\2\0\0\reslint_d\15javascript\1\0\0\1\2\0\0\reslint_d\18linters_by_ft\tlint\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/opt/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2Û\2\0\0\4\0\20\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\r\0005\3\f\0=\3\14\2=\2\15\0015\2\16\0005\3\17\0=\3\18\2=\2\19\1B\0\2\1K\0\1\0\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\thint\bÔÅ™\nerror\bÔÅó\fwarning\bÔÅ±\1\0\2\17show_on_dirs\2\venable\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\1\0\1\nwidth\3\30\tsort\1\0\2\18disable_netrw\2\17hijack_netrw\2\1\0\1\vsorter\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-openbrowser.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/telescope-openbrowser.nvim",
    url = "https://github.com/tamago324/telescope-openbrowser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/atouche/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2-\0\1\3\1\2\0\5-\1\0\0009\1\0\0019\2\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expandö\1\0\1\2\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\3\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\2ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\2ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisible≈\6\1\0\n\0002\0X6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0005\4\t\0005\5\a\0009\6\5\0025\a\6\0B\6\2\2=\6\b\5=\5\n\0045\5\f\0003\6\v\0=\6\r\5=\5\14\0049\5\15\0009\5\16\0059\5\17\0055\6\19\0009\a\15\0009\a\18\a)\b¸ˇB\a\2\2=\a\20\0069\a\15\0009\a\18\a)\b\4\0B\a\2\2=\a\21\0069\a\15\0009\a\22\aB\a\1\2=\a\23\0069\a\15\0009\a\24\a5\b\27\0009\t\25\0009\t\26\t=\t\28\bB\a\2\2=\a\29\0069\a\15\0003\b\30\0005\t\31\0B\a\3\2=\a \0069\a\15\0003\b!\0005\t\"\0B\a\3\2=\a#\6B\5\2\2=\5\15\0044\5\6\0005\6$\0>\6\1\0055\6%\0>\6\2\0055\6&\0>\6\3\0055\6'\0>\6\4\0055\6(\0>\6\5\5=\5)\0045\5-\0009\6*\0009\6+\0069\6,\6B\6\1\2=\6.\0059\6*\0009\6+\0069\6,\6B\6\1\2=\6/\5=\5+\0045\0050\0=\0051\4B\3\2\0012\0\0ÄK\0\1\0\17experimental\1\0\1\15ghost_text\2\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-d>\n<C-u>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\vexpand\1\0\0\0\15formatting\1\0\0\vformat\1\0\0\1\0\4\rmaxwidth\0032\tmode\16symbol_text\22show_labelDetails\2\18ellipsis_char\b...\15cmp_format\nsetup\flspkind\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\2Û\1\0\0\4\0\r\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\3\0005\3\4\0=\3\5\2=\2\a\0015\2\b\0=\2\t\0014\2\0\0=\2\n\0015\2\v\0=\2\f\1B\0\2\1K\0\1\0\aui\1\0\1\vborder\frounded\23finder_action_keys\nhover\1\0\3\19preview_height\4\0ÄÄÄˇ\3\18preview_width\4\0ÄÄÄˇ\3\venable\2\15definition\1\0\0\tkeys\1\0\1\tquit\6q\1\0\1\fdisplay\nfloat\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\2M\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip.loaders.from_vscode\frequire\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2Û\2\0\0\4\0\20\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\r\0005\3\f\0=\3\14\2=\2\15\0015\2\16\0005\3\17\0=\3\18\2=\2\19\1B\0\2\1K\0\1\0\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\thint\bÔÅ™\nerror\bÔÅó\fwarning\bÔÅ±\1\0\2\17show_on_dirs\2\venable\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\1\0\1\nwidth\3\30\tsort\1\0\2\18disable_netrw\2\17hijack_netrw\2\1\0\1\vsorter\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\0026\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15definition\bbuf\blsp\bvim<\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\21workspace_symbol\bbuf\blsp\bvim7\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\16code_action\bbuf\blsp\bvim6\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\15references\bbuf\blsp\bvim2\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\vrename\bbuf\blsp\bvim:\0\0\1\0\4\0\0066\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\1K\0\1\0\19signature_help\bbuf\blsp\bvim£\5\1\2\b\0\29\0[5\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\6\0003\6\a\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\b\0'\6\t\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\n\0003\6\v\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\f\0'\6\r\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\14\0'\6\15\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\16\0'\6\17\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\18\0003\6\19\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\20\0003\6\21\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\22\0003\6\23\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\24\0'\5\25\0003\6\26\0\18\a\2\0B\3\5\0016\3\2\0009\3\3\0039\3\4\3'\4\5\0'\5\27\0'\6\28\0\18\a\2\0B\3\5\1K\0\1\0%<cmd>Lspsaga peek_definition<CR>\15<leader>pd\0\n<C-h>\6i\0\16<leader>vrn\0\16<leader>vrr\0\16<leader>vca*<cmd>Lspsaga diagnostic_jump_next<CR>\a]d*<cmd>Lspsaga diagnostic_jump_prev<CR>\a[d+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>vd\0\16<leader>vws\31<cmd>Lspsaga hover_doc<CR>\6K\0\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1_\0\2\5\1\3\0\t9\2\0\0+\3\1\0=\3\1\2-\2\0\0009\2\2\2\18\3\0\0\18\4\1\0B\2\3\1K\0\1\0\0¿\14on_attach\24document_formatting\24server_capabilitiesƒ\3\1\0\b\0\24\0,6\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0003\3\4\0B\2\2\0019\2\5\0'\3\6\0B\2\2\0016\2\0\0'\3\a\0B\2\2\0029\2\b\2B\2\1\0016\2\0\0'\3\t\0B\2\2\0029\2\b\0025\3\n\0005\4\v\0=\4\f\0034\4\3\0009\5\r\0>\5\1\4=\4\14\3B\2\2\0019\2\15\0019\2\b\0025\3\17\0003\4\16\0=\4\3\0039\4\18\0019\4\19\4'\5\20\0'\6\21\0'\a\22\0B\4\4\2=\4\23\3B\2\2\0012\0\0ÄK\0\1\0\rroot_dir\t.git\18tsconfig.json\17package.json\17root_pattern\tutil\1\0\0\0\rtsserver\rhandlers\18default_setup\21ensure_installed\1\a\0\0\vlua_ls\veslint\16tailwindcss\truff\fpyright\rtsserver\1\0\1\20automatic_setup\2\20mason-lspconfig\nsetup\nmason\16recommended\vpreset\0\14on_attach\14lspconfig\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd barbecue.nvim ]]

-- Config for: barbecue.nvim
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'conform.nvim', 'nvim-lint'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'conform.nvim', 'nvim-lint'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
