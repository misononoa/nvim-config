return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local opts = {
			noremap = true,
			silent = true,
		}
		vim.api.nvim_set_keymap("n", "<leader><leader>", "<cmd>NvimTreeToggle .<cr>", opts)
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
