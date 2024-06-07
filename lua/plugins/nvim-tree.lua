return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local opts = {
			noremap = true,
			silent = true,
		}
		local map = vim.api.nvim_set_keymap
		map("n", "/<leader>", "<cmd>NvimTreeOpen .<cr>", opts)
		map("n", "<leader>/", "<cmd>NvimTreeClose<cr>", opts)

		require("nvim-tree").setup({

			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 25,
			},
			filters = {
				dotfiles = true,
			},
		})
	end
}
