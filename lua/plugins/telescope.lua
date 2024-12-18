return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"nvim-telescope/telescope-live-grep-args.nvim"
	},
	lazy = true,
	event = {
		'VeryLazy',
	},
	config = function (opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("live_grep_args")
		local builtin = require("telescope.builtin")
		local lga = telescope.extensions.live_grep_args
		local map = vim.keymap.set
		map("n", "fg", lga.live_grep_args, {})
		map("n", "ff", builtin.find_files, {})
		map("n", "fb", builtin.buffers, {})
		map("n", "fh", builtin.help_tags, {})
		map("n", "fi", builtin.git_status, {})
	end,
	opts = function()
		local actions = require 'telescope.actions'
		local transform_mod = require('telescope.actions.mt').transform_mod
		local lga_actions = require 'telescope-live-grep-args.actions'
		return {
			defaults = {
				mappings = {
					n = {
						['q'] = function (prompt_bufnr)
							actions.close(prompt_bufnr)
						end,
					}
				}
			},
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
		}
	end,
}
