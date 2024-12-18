return {
	"elentok/format-on-save.nvim",
	keys = {
		{
			'<A-S-f>',
			function()
				local fos = require 'format-on-save'
				fos.format()
				fos.restore_cursors()
			end,
		},
	},
	opts = function()
		local formatters = require("format-on-save.formatters")
		local rustfmt = { pcall(function()
			if vim.fn.executable('cargo') then
				return formatters.shell({ cmd = { 'cargo fmt', '%' } })
			else
				error 'can\'t use rustfmt'
			end
		end) }
		local formatter_by_ft = {
			lua = formatters.lsp,
			typescript = formatters.lsp,
			rust = formatters.lsp,
			java = formatters.lsp,
		}
		if rustfmt.success then
			formatter_by_ft.rust = rustfmt.result
		end
		return {
			formatter_by_ft = {
				lua = formatters.lsp,
				typescript = formatters.lsp,
				rust = formatters.lsp,
				java = formatters.lsp,
			},
		}
	end,
}
