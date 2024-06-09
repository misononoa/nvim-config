local set_opt = vim.api.nvim_set_option_value

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
if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 then
	vim.cmd [[language en_US]]
elseif vim.fn.has("linux") == 1 then
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
map("n", "<C-t><C-t>", "<cmd>tab term pwsh.exe<cr>", opts)
map("n", "<C-t>", "<cmd>tabnew<cr>", opts)
-- ターミナルを抜ける操作
map("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

--
-- NeoVide
--
if vim.g.neovide then
	vim.g.neovide_theme = "light"
	vim.g.neovide_scale_factor = 1.0
	vim.o.guifont = "CaskaydiaCove NFP,M PLUS 1 Code"

	-- animation_speed
	local aspeed = 0.1
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_position_animation_length = aspeed
	vim.g.neovide_scroll_animation_length = aspeed
end
