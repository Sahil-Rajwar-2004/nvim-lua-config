local notify = require("notify")

notify.setup({
	stages = "slide",
	on_open = nil,
	on_close = nil,
	timeout = 3000,
	background_colour = "FloatShadow",
	minimum_width = 50,
	icons = {
		WARN = "",
		ERROR = "",
		INFO = "",
		DEBUG = "",
	},
	render = "compact", -- Choose between "default", "minimal", and "compact" styles
})

vim.notify = notify
