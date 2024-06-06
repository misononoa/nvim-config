return {
	"elentok/format-on-save.nvim",
	config = function()
		vim.api.nvim_set_keymap("n", "<C-w>", "<cmd>Format<cr>", { noremap = true })
		local lsp = require("format-on-save.formatters").lsp
		require("format-on-save").setup({
			formatter_by_ft = {
				lua = lsp,
				typescript = lsp,
			}
		})
	end,
	lazy = true,
	keys = { "<C-w>" },
}
