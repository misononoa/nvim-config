return {
	"elentok/format-on-save.nvim",
	lazy = true,
	keys = { "<A-S-f>", },
	config = function(_, opts)
		require("format-on-save").setup(opts)
		vim.api.nvim_set_keymap("n", "<A-S-f>", "<cmd>Format<cr>", { noremap = true })
	end,
	opts = function()
		local lsp = require("format-on-save.formatters").lsp
		return {
			formatter_by_ft = {
				lua = lsp,
				typescript = lsp,
				rust = lsp,
			},
		}
	end,
}
