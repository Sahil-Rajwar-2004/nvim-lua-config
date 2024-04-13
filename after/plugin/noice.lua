require("noice").setup({
	cmdline = {
		enabled = true,
		icons = {
			prompt = "❯ ",
			filter = " ",
			lua = " ",
		},
	},
	lsp = {
		progress = {
			enabled = true,
			auto = true,
		},
		hover = {
			enabled = true,
		},
		signature = {
			enabled = true,
		},
	},
	presets = {
		bottom_search = true,
		command_palette = true,
		long_message_to_split = true,
	},
})
