vim.opt.showtabline = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.clipboard:append('unnamedplus,unnamed')
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.scrolloff = 3
vim.opt.smartindent = true
vim.opt.expandtab = false
vim.opt.tabstop = 3
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 0
vim.opt.mousemodel = 'extend'
vim.opt.signcolumn = 'yes'

if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
end

