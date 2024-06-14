return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup {}
			end,
		})
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
}
