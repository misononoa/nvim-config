return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-telescope/telescope-live-grep-args.nvim"
	},
	lazy = true,
	config = function()
		local telescope = require("telescope")
		local lga_actions = require("telescope-live-grep-args.actions")

		telescope.setup({
			extensions = {
				live_grep_args = {
					auto_quoting = true,
					mappings = {
						i = {
							["<C-k>"] = lga_actions.quote_prompt(),
							["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob" }),
						},
					},
				},
			},
		})
		telescope.load_extension("live_grep_args")
	end,
	init = function()
		local map = vim.keymap.set
		local builtin = require("telescope.builtin")
		local lga = require("telescope").extensions.live_grep_args
		map("n", "<leader>]", lga.live_grep_args, {})
		map("n", "<leader>f", builtin.find_files, {})
		map("n", "<leader>b", builtin.buffers, {})
		map("n", "<leader>h", builtin.help_tags, {})
		map("n", "<leader>g", builtin.git_status, {})
	end
}
