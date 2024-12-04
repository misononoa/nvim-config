return {
	'zaldih/themery.nvim',
	lazy = false,
	config = true,
	opts = function()
		local all_themes = vim.fn.getcompletion('', 'color')
		return {
			themes = all_themes,
			livepreview = true
		}
	end
}
