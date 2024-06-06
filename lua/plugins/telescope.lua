return {
	"nvim-telescope/telescope.nvim",
	init = function()
		local map = vim.keymap.set
		local builtin = require("telescope.builtin")
		map("n", "<C-s>f", builtin.find_files, {})
		map("n", "<C-s>l", builtin.live_grep, {})
		map("n", "<C-s>b", builtin.buffers, {})
		map("n", "<C-s>h", builtin.help_tags, {})
		map("n", "<C-s>g", builtin.git_status, {})
	end,
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = true,
}
