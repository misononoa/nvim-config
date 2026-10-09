return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		automatic_enable = true,
		ensure_installed = require("config.lsp").enabled
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig"
	}
}

