return {
	'shatur/neovim-ayu',
	config = function (opts)
		require('ayu').setup(opts)
	end,
	init = function ()
		vim.cmd('colorscheme ayu')
	end
}
