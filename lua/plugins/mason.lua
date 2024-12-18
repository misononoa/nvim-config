return {
	{
		"williamboman/mason.nvim",
		config = true,
		lazy = false,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			'hrsh7th/cmp-nvim-lsp',
		},
		config = function(_, opts)
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup {
						capabilities = require('cmp_nvim_lsp').default_capabilities(),
					}
				end,
			})
			require("mason-lspconfig").setup(opts)
		end,
		opts = function()
			local getls = function()
				local ok, ls = pcall(require, "ensure-ls")
				if ok then
					return ls
				else
					return { "lua_ls" }
				end
			end
			return {
				ensure_installed = getls(),
			}
		end
	},
}
