return {
	"nvim-tree/nvim-tree.lua",
	config = function(_, opts)
		require("nvim-tree").setup(opts)
		local key_opts = {
			noremap = true,
			silent = true,
		}
		local map = vim.api.nvim_set_keymap
		map("n", "<leader><leader>", "<cmd>NvimTreeToggle .<cr>", key_opts)
	end,
	opts = {
		sort = {
			sorter = "case_sensitive",
		},
		view = {
			width = 25,
		},
		filters = {
			dotfiles = true,
		},
	},
	lazy = true,
	keys = { "<leader>" },
}
