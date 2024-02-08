vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<C-c>", "\"+y")
vim.keymap.set("v", "<C-c>", "\"+y")

vim.keymap.set("n", "<C-v>", "\"+p")
vim.keymap.set("v", "<C-v>", "\"+p")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("v", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")

vim.keymap.set("n", "<S-W>", "<C-w>w")

vim.keymap.set("n", "<C-w>", "<C-u>")

vim.keymap.set("v", "v", "V");

vim.keymap.set("n", "<S-s>", ":lua vim.lsp.buf.hover()<CR>")
