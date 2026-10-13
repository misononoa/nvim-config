vim.g.mapleader = " "
vim.g.maplocalleader = ";"

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

if not vim.g.vscode then
	keymap.set('n', '<c-l>', '<cmd>tabn<cr>', opts)
	keymap.set('n', '<c-h>', '<cmd>tabp<cr>', opts)
	keymap.set('n', '<leader>gq', 'gggqG', opts)
	keymap.set('i', 'jj', '<esc>', opts)
end

keymap.set('n', '<esc><esc>', '<cmd>noh<cr>', opts)
keymap.set('i', '<c-o>', '<c-o>o', opts)

