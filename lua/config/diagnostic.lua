local severity = vim.diagnostic.severity

return {
	signs = {
		text = {
			[severity.ERROR] = '!',
			[severity.WARN] = '!',
			[severity.HINT] = '*',
			[severity.INFO] = '*'
		},
	},
	virtual_text = false
}
