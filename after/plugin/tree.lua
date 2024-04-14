require("neo-tree").setup({
	theme = "default",
	filesystem = {
		follow_current_file = { enabled = true },
		group_empty_dirs = true,
		use_libuv_file_watcher = true,

		window = {
			mappings = {
				["2-LeftMouse"] = "open",
				["CR"] = "open",
				["o"] = "open",
				["O"] = "open_split",
				["s"] = "open_vsplit",
				["t"] = "open_tabnew",
				["w"] = "preview",
				["C"] = "close_node",
				["z"] = "toggle_node",
				["a"] = "add",
				["d"] = "delete",
				["r"] = "rename",
				["c"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["q"] = "close_window",
			},
		},
	},
	buffers = {
		follow_current_file = { enabled = true },
		group_empty_dirs = true,
		show_current_file = true,

		window = {
			mappings = {
				["<2-LeftMouse>"] = "open",
				["<CR>"] = "open",
				["o"] = "open",
				["O"] = "open_split",
				["s"] = "open_vsplit",
				["t"] = "open_tabnew",
				["C"] = "close_buffer",
				["a"] = "add",
				["d"] = "delete",
				["r"] = "rename",
				["c"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["q"] = "close_window",
			},
		},
	},
})

vim.keymap.set("n", "<leader>t", "<cmd>Neotree toggle<cr>", { noremap = true, silent = true, desc = "Toggle Neo-tree" })
