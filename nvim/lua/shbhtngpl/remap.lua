vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

-- Move chunks of line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-q>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy
vim.keymap.set("v", "<C-c>", "\"+y")

-- Paste
vim.keymap.set("n", "<C-p><C-p>", "\"+p")
vim.keymap.set("v", "<C-p><C-p>", "\"+p")

vim.keymap.set("n", "Q", "<nop>")

-- Save
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("v", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

-- Shift window
vim.keymap.set("n", "<S-W>", "<C-w>w")


vim.keymap.set("v", "v", "V");

-- Format
vim.keymap.set("n", "<leader>ff", ":Neoformat<CR>")

-- Comment
vim.keymap.set("v", "<leader>c", ":'<,'>norm i//<CR>")
vim.keymap.set("v", "<leader>u", ":'<,'>norm ^xx<CR><leader>ff")
