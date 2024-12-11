return {
	'stevearc/oil.nvim',
	opts = {
		default_file_explorer = true,
		keymaps = {
			["<C-p>"] = "actions.preview",
			["<C-l>"] = "actions.refresh",
			["gs"] = "actions.change_sort",
			["g."] = "actions.toggle_hidden",
		},
		use_default_keymaps = true,
		view_options = {
			show_hidden = true,
			is_hidden_file = function(name, _)
				return vim.startswith(name, ".")
			end,
		},
	},

	config = true,
	dependencies = { 'echasnovski/mini.icons' },
}
