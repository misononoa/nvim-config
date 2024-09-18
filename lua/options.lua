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
set_opt("bg", "light", {})
set_opt("scrolloff", 4, {})
set_opt("inccommand", "split", {})
set_opt("showtabline", 2, {})
set_opt("tabstop", 3, {})
set_opt("shiftwidth", 3, {})
set_opt("number", true, {})
set_opt("relativenumber", true, {})
set_opt("wrap", false, {})
set_opt("cursorline", true, {})

-- 言語を英語に
if is_os("win") then
	vim.cmd [[language en_US]]
elseif is_os("linux") == 1 then
	vim.cmd [[language C.utf8]]
end

--
-- keymap
--
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- タブ操作
map("n", "<C-Left>", "<cmd>tabprevious<cr>", opts)
map("n", "<C-Right>", "<cmd>tabnext<cr>", opts)
map("n", "<C-t>", "<cmd>tabnew<cr>", opts)
map("n", "<C-t><C-t>", "<cmd>tab term<cr>", opts)
-- ターミナルを抜ける操作
map("t", "<Esc><Esc>", "<C-\\><C-n>", opts)
