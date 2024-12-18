return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = {
		'VeryLazy',
	},
	opts = {
		options = {
			theme = "auto",
			section_separators = '',
			component_separators = '',
			globalstatus = true,
		},
		sections = {
			lualine_a = { 'mode' },
			lualine_b = { 'branch', 'diff', 'diagnostics' },
			lualine_c = { 'filename' },
			lualine_x = {
				'encoding',
				'fileformat',
				'filetype',
				{
					require('lazy.status').updates,
					cond = require('lazy.status').has_updates,
					color = { fg = "#ff9e64" },
				},
			},
			lualine_y = { 'progress' },
			lualine_z = { 'location' }
		},
	},
}
