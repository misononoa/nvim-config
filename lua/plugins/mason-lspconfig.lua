return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = true,
	opts = {
		ensure_installed = {
			"lua_ls",
			"biome",
			"astro",
		}
	},
	init = function()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup {}
			end,
		})
	end,
}
