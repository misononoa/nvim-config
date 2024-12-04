local invoke_key = '<leader><tab>'
return {
	'sidebar-nvim/sidebar.nvim',
	name = 'sidebar-nvim',
	config = true,
	lazy = true,
	keys = { invoke_key },
	opts = function()
		local sidebar = require 'sidebar-nvim'
		return {
			side = 'right',
			open = false,
			initial_width = 40,
			sections = { 'diagnostics', 'git' },
			section_separator = { '', '', '' },
			bindings = {
				['q'] = function() sidebar.close() end,
			}
		}
	end,
	init = function()
		local sidebar = require 'sidebar-nvim'
		local map = vim.keymap.set
		map('n', invoke_key, sidebar.toggle, {})
	end
}
