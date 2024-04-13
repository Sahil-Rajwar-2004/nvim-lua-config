vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_opener = "vsplit" -- How to open the terminal: 'vsplit' or 'split'
vim.g.floaterm_position = "center" -- Position of the terminal: 'center', 'top', 'bottom', 'left', 'right'

vim.g.floaterm_winblend = 15
vim.g.floaterm_borderchars = "─││─"

vim.api.nvim_set_keymap("n", "<F12>", ":FloatermNew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F12>", [[<C-\><C-n>:q!<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":FloatermNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":FloatermPrev<CR>", { noremap = true, silent = true })

vim.g.floaterm_shell = "/bin/bash"
