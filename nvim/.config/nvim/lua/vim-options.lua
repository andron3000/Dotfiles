vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.swapfile = false
vim.opt.guifont = "JetBrains Mono NL Font:h16"
vim.opt.statusline = "%f %y %m %= %l,%c %p%%"

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- NeoTree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle left<CR>")

vim.wo.number = true
