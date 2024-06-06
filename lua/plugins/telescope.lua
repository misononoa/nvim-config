return {
	"nvim-telescope/telescope.nvim",
	init = function(telescope, opts)
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<C-p>f", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>g", builtin.live_grep, {})
		vim.keymap.set("n", "<C-p>b", builtin.buffers, {})
		vim.keymap.set("n", "<C-p>h", builtin.help_tags, {})
	end,
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = true,
}
