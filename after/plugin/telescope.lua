vim.api.nvim_set_hl(0, "TelescopePrompt", {
	fg = "#FFA500", -- Gold foreground color for the prompt
	bg = "#1E1E1E", -- Dark background color for the prompt
	bold = true, -- Optional: make the text bold
})

vim.api.nvim_set_hl(0, "TelescopeResults", {
	fg = "#FFA500", -- Green foreground color for the results
	bg = "#1E1E1E", -- Dark background color for the result
})

vim.api.nvim_set_hl(0, "TelescopePreview", {
	fg = "#FFA500", -- White foreground color for the preview
	bg = "#1E1E1E", -- Dark background color for the preview
})

vim.api.nvim_set_hl(0, "TelescopeSelection", {
	fg = "#FFA500", -- Blue foreground color for the selection
	bg = "#1E1E1E", -- Dark background color for the selection
})

local builtin = require("telescope.builtin")

require("telescope").setup({
	defaults = {
		file_ignore_patterns = {},
		path_display = { "truncate" },
		layout_config = {
			horizontal = {
				preview_width = 1,
				border = "rounded",
			},
			vertical = {
				width = 1,
				border = "rounded",
			},
		},
		mappings = {
			i = {
				["<esc>"] = require("telescope.actions").close,
				["<C-j>"] = require("telescope.actions").move_selection_next,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
			},
		},
		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
		use_less = true,
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			layout_config = {
				prompt_position = "top",
				width = 0.8,
				height = 0.4,
			},
			path_display = { "truncate" },
		},
	},
})

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>ss", function()
	builtin.grep_string({ search = vim.fn.input("Grep ❯ ") })
end)
