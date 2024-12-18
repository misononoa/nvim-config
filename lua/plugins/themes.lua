return {
	-- Theme plugs
	"folke/tokyonight.nvim",
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		opts = {
			variant = "auto",
			dark_variant = "main",
			dim_inactive_windows = true,
			enable = {
				terminal = true,
				migrations = true,
			},
		},
	},

	-- Theme management
	{
		'f-person/auto-dark-mode.nvim',
		dependencies = { 'zaldih/themery.nvim' },
		config = true,
		opts = function()
			local themery = require 'themery'
			return {
				update_interval = 1000,
				set_dark_mode = function()
					vim.api.nvim_set_option_value('background', 'dark', {})
					themery.setThemeByName('rose-pine-main')
				end,
				set_light_mode = function()
					vim.api.nvim_set_option_value('background', 'dark', {})
					themery.setThemeByName('rose-pine-dawn')
				end
			}
		end
	},
	{
		'zaldih/themery.nvim',
		cmd = {
			'Themery',
		},
		opts = function()
			local all_themes = vim.fn.getcompletion('', 'color')
			return {
				themes = all_themes,
				livepreview = true
			}
		end
	}
}
