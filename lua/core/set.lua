vim.g.mapleader = " "

vim.opt.guicursor = ""
vim.opt.number = true

vim.o.mouse = "a"

vim.api.nvim_set_keymap("n", "<A-Down>", ":m+<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-Up>", ":m-2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hl", ":nohlsearch<CR>", { noremap = true, silent = true })

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.termguicolors = true

vim.g.lsp_enabled = 1

vim.cmd("colorscheme kanagawa-wave")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
