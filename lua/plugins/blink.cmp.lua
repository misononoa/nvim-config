return {
	"saghen/blink.cmp",
	dependencies = {
		"saghen/blink.lib",
		"rafamadriz/friendly-snippets"
	},
	build = function()
		require("blink.cmp").build():pwait()
	end,
	opts = {
		fuzzy = { implementation = "lua" },
		keymap = {
			preset = "enter",
			["<Tab>"] = { "select_next", "fallback" }
		}
	}
}

