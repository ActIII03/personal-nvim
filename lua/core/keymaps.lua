-- Function for mapping
local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change split orientation
map('n', '<leader>th', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>ts', '<C-w>t<C-w>H') -- change horizontal to vertical
-- Rehighlight based on new search
map('n', '<leader>h', ':nohlsearch<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')
