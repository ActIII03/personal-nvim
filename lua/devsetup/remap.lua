vim.g.mapleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move command
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- allows search terms to still in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keeps yank-term in buffer and allows multiple pastes
vim.keymap.set("x", "<leader>p", [["_dP]])

-- can copy to system clipboad
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- can copy to JUST vim
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- windows
-- Split vertically and horizontally
vim.keymap.set("n", "<leader>ws", ":vsp<CR>") -- Vertical split
vim.keymap.set("n", "<leader>wh", ":sp<CR>") -- Horizontal split

vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Resize windows using Ctrl and arrow keys
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>") -- Increase height
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>") -- Decrease height
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>") -- Increase width
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>") -- Decrease width

vim.keymap.set("n", "<leader>mh", ":lua require('memento').toggle()<CR>")
