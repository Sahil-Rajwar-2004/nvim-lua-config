require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "🔍  ",
    selection_caret = "➜  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "vertical",  -- Choose vertical or horizontal layout
    layout_config = {
      vertical = {
        mirror = false,
        width = 0.75,                -- Set the width to 75% of the screen
        height = 0.8,                -- Set the height to 80% of the screen
      },
      horizontal = {                 -- In case you switch to horizontal later
        preview_width = 0.6,
      },
      prompt_position = "top",       -- Keep prompt at the top
      preview_cutoff = 120,          -- Hide preview window for small files
    },
    file_ignore_patterns = { "node_modules" },
    path_display = { "truncate" },
    winblend = 0,                    -- Transparency level
    border = {},                     -- Set border if needed
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  },
  pickers = {
    find_files = {
      theme = "dropdown",  -- Keep dropdown for find_files
      previewer = false,   -- No preview for dropdown theme
      layout_config = {
        width = 0.5,       -- Custom width for find_files dropdown
        height = 0.6,      -- Custom height for find_files dropdown
      }
    },
  },
}

vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#ffaf00" })


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})     -- Find files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})      -- Live grep search
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})        -- List open buffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})      -- Find help tags

