return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	configure = true,
	opts = {
		variant = "auto",
		dark_variant = "main",
		dim_inactive_windows = true,
		enable = {
			terminal = true,
			migrations = true,
		},
	},
	init = function()
		-- vim.o.background = 'dark'
		vim.cmd [[colorscheme rose-pine]]
	end
}
