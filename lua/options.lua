local set_opt = vim.api.nvim_set_option_value
local is_os = function(os_name)
	local has = vim.fn.has
	if os_name == "win" then
		return has("win32") == 1 or has("win64") == 1
	elseif os_name == "linux" then
		return has("linux") == 1
	else
		return false
	end
end

--
-- general
--
set_opt("termguicolors", true, {})
set_opt("scrolloff", 4, {})
set_opt("inccommand", "split", {})
set_opt("showtabline", 2, {})
set_opt("tabstop", 3, {})
set_opt("shiftwidth", 3, {})
set_opt("number", true, {})
set_opt("relativenumber", true, {})
set_opt("wrap", false, {})
set_opt("cursorline", true, {})
set_opt("mouse", 'v', {})
vim.opt.clipboard:append({ 'unnamedplus' })

-- 言語を英語に
if is_os("win") then
	vim.cmd [[language en_US]]
elseif is_os("linux") then
	vim.cmd [[language C.utf8]]
end

--
-- keymap
--
local setkeymap = function()
	local map = vim.api.nvim_set_keymap
	local opts = { noremap = true, silent = true }

	-- insertを抜ける操作
	map("i", "jj", "<Esc><Esc>", opts)

	-- タブ操作
	map("n", "<C-Left>", "<cmd>tabprevious<cr>", opts)
	map("n", "<C-Right>", "<cmd>tabnext<cr>", opts)
	map("n", "<C-t>", "<cmd>tabnew<cr>", opts)
	if vim.fn.executable('pwsh') then
		map("n", "<C-t><C-t>", "<cmd>tab term pwsh<cr>", opts)
	elseif vim.fn.executable('fish') then
		map("n", "<C-t><C-t>", "<cmd>tab term fish<cr>", opts)
	end
	-- ターミナルを抜ける操作
	map("t", "<Esc><Esc>", "<C-\\><C-n>", opts)
end
setkeymap()

if vim.g.neovide then
	require 'neovide-config'
end
