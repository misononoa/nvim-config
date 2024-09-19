return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts
	
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
			is_hidden_file = function(name, bufnr)
				return vim.startswith(name, ".")
			end,
		},
	},

	config = true,
	dependencies = { 'echasnovski/mini.icons' },
}
