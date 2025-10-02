return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function (opts)
		require('tiny-inline-diagnostic').setup(opts)
		vim.diagnostic.config({ virtual_text = false })
	end,
	opts = {
		preset = "modern",
		transparent_bg = false,
		transparent_cursorline = true,
		options = {
			show_source = {
				enabled = true,
				if_many = false
			},
			overflow = {
				mode = "wrap",
				padding = 1,
			},
			break_line = {
				enabled = false,
				after = 30
			}
		}
	}
}
