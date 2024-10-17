-- Basics Configuration
vim.opt.number = true                                                                                                                         -- Enable line numbers
vim.opt.relativenumber = false                                                                                                                -- Disable relative line numbers
vim.opt.expandtab = true                                                                                                                      -- Convert tabs to spaces
vim.opt.shiftwidth = 2                                                                                                                        -- Number of spaces for each indentation
vim.opt.tabstop = 2                                                                                                                           -- Number of spaces for a tab
vim.opt.smartindent = true                                                                                                                    -- Smart indentation
vim.opt.wrap = false                                                                                                                          -- Disable line wrapping
vim.opt.cursorline = true                                                                                                                     -- Highlight current line
vim.opt.termguicolors = true                                                                                                                  -- Enable true color support
vim.opt.mouse = ""                                                                                                                            -- Disable mouse use only keyboard
vim.g.mapleader = " "                                                                                                                         -- Set leader key to space
vim.g.netrw_banner = 0                                                                                                                        -- Netrw banner disabled
vim.g.netrw_liststyle = 3                                                                                                                     -- Show NerdTree like structure
vim.o.guicursor = ""                                                                                                                          -- Set cursor to block cursor


-- Key Bindings
vim.api.nvim_set_keymap('n', '<leader>hl', ':nohlsearch<CR>', { noremap = true, silent = true })                                              -- Disable search Highlight
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })                                                        -- Save with <leader>w
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })                                                        -- Quit with <leader>q
vim.api.nvim_set_keymap('n', '<leader>e', ':Ex<CR>', { noremap = true, silent = true })                                                      -- Open File Explorer in TUI form
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })                                                     -- Shift line to Up in normal mode
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })                                                   -- Shift line to Down in normal mode
vim.api.nvim_set_keymap('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })                                                 -- Shift line to Up in visual mode
vim.api.nvim_set_keymap('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })                                               -- Shift line to Down in visual mode
vim.api.nvim_set_keymap('n', '<C-Left>', ':bprev<CR>', { noremap = true, silent = true })                                                     -- Jump to previous buffer
vim.api.nvim_set_keymap('n', '<C-Right>', ':bnext<CR>', { noremap = true, silent = true })                                                    -- Jump to next buffer
vim.api.nvim_set_keymap('n', '<leader>ls', ':ls<CR>', { noremap = true, silent = true })                                                      -- Show Buffers
vim.api.nvim_set_keymap('n', '<leader>h', ':sp<CR>', { noremap = true, silent = true })                                                       -- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>v', ':vsp<CR>', { noremap = true, silent = true })                                                      -- Vertical split
vim.api.nvim_set_keymap('n', 'W', '<C-w>k', { noremap = true, silent = true })                                                                -- Move up
vim.api.nvim_set_keymap('n', 'S', '<C-w>j', { noremap = true, silent = true })                                                                -- Move down
vim.api.nvim_set_keymap('n', 'A', '<C-w>h', { noremap = true, silent = true })                                                                -- Move left
vim.api.nvim_set_keymap('n', 'D', '<C-w>l', { noremap = true, silent = true })                                                                -- Move right
vim.api.nvim_set_keymap('n', '<C-j>', ':resize +2<CR>', { noremap = true, silent = true })                                                    -- Expand height
vim.api.nvim_set_keymap('n', '<C-k>', ':resize -2<CR>', { noremap = true, silent = true })                                                    -- Contract height
vim.api.nvim_set_keymap('n', '<C-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })                                           -- Contract width
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })                                           -- Expand width


-- Themes
vim.cmd.background = "dark"
vim.cmd.colorscheme("kanagawa-dragon")
