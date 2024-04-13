require("fine-cmdline").setup({
	cmdline = {
		enable_keymaps = true,
		smart_history = true,
		prompt = "❯ ",
		title = "",
	},
	popup = {
		position = {
			row = "10%",
			col = "50%",
		},
		size = {
			width = "30%",
		},
		border = {
			style = "rounded",
		},
	},
})

set_keymaps = function(imap, feedkeys)
	local fn = require("fine-cmdline").fn

	imap("<C-k>", fn.up_search_history)
	imap("<C-j>", fn.down_search_history)
	imap("<Up>", fn.up_history)
	imap("<Down>", fn.down_history)
end

vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
