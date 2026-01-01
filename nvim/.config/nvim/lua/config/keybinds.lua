--local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<C-c>", ":nohl<CR>") --clears search highlights
vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "<leader>t", ":terminal")
