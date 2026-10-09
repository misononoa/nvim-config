return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-fzy-native.nvim',
	},
	init = function()
		require('telescope').load_extension('fzy_native')
		local builtin = require('telescope.builtin')
		local keymap = vim.keymap
		keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
		keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope lsp document symbols' })
		keymap.set('n', '<leader>fw', builtin.lsp_workspace_symbols, { desc = 'Telescope lsp workspace symbols' })
		keymap.set('n', '<leader><c-i>', builtin.lsp_implementations, { desc = 'Telescope lsp implementations' })
		keymap.set('n', '<leader><c-d>', builtin.lsp_definitions, { desc = 'Telescope lsp definitions' })
		keymap.set('n', '<leader><c-r>', builtin.lsp_references, { desc = 'Telescope lsp references' })
	end
}
