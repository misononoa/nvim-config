return {
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
}
