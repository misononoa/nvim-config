local api = vim.api
local set_opt = api.nvim_set_option
local set_win = api.nvim_win_set_option

--
-- 一般設定
--
set_opt("termguicolors", true)
set_opt("scrolloff", 4)
set_opt("inccommand", "split")
set_opt("showtabline", 2)
set_opt("tabstop", 3)
set_opt("shiftwidth", 3)

set_win(0, "number", true)
set_win(0, "relativenumber", true)
set_win(0, "wrap", false)
set_win(0, "cursorline", true)
