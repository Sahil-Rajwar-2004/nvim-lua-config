vim.g.better_whitespace_enabled = 1
vim.g.strip_whitespace_on_save = 1
vim.g.strip_whitespace_confirm = 0
vim.g.better_whitespace_ctermcolor = "cyan"
vim.g.better_whitespace_guicolor = "#00FFFF"
vim.g.better_whitespace_filetypes_blacklist = { "markdown", "json" }
vim.g.better_whitespace_ansi_esc = 0

vim.api.nvim_set_keymap("n", "<leader>sw", ":StripWhitespace<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sl", ":StripWhitespaceOnCurrentLine<CR>", { noremap = true, silent = true })
