vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-1<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-k>", ":m '<-4<CR>gv=gv") -- move line down(v)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
