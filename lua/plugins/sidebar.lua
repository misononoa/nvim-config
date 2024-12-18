return {
	'sidebar-nvim/sidebar.nvim',
	name = 'sidebar-nvim',
	lazy = false,
	keys = {
		{
			'<leader>]',
			function()
				require('sidebar-nvim').toggle()
			end,
		},
	},
	opts = {
		side = 'right',
		open = false,
		initial_width = 40,
		sections = { 'diagnostics', 'git' },
		section_separator = { '', '', '' },
	},
}
