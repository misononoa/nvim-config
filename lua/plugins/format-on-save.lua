return {
	"elentok/format-on-save.nvim",
	config = function()
		local lsp = require("format-on-save.formatters").lsp
		require("format-on-save").setup({
			formatter_by_ft = {
				lua = lsp,
				typescript = lsp,
			}
		})
	end
}
