return {
	"rose-pine/neovim",
	name = "rose-pine",
	lazy = false,
	priority = 1000,
	configure = true,
	opts = {
		variant = "dawn",
		dark_variant = "moon",
		dim_inactive_windows = true,
		enable = {
			terminal = true,
			migrations = true,
		},
	},
	init = function ()
		vim.cmd[[colorscheme rose-pine]]
	end
}
