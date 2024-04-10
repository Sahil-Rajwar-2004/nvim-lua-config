local custom_gruvbox = require'lualine.themes.gruvbox'

--custom_gruvbox.normal.c.bg = '#000000'
--custom_gruvbox.insert.c.bg = '#000000'
--custom_gruvbox.command.c.bg = '#000000'
--custom_gruvbox.visual.c.bg = '#000000'

local custom_theme = {
  normal = {
    a = {fg = '#008080', bg = '#252525'},
    b = {fg = '#ffffff', bg = '#252525'},
    c = {fg = '#ffffff', bg = '#252525'}
  },
  insert = {
    a = {fg = '#008080', bg = '#252525'},
    b = {fg = '#ffffff', bg = '#252525'},
    c = {fg = '#ffffff', bg = '#252525'}
  },
}

require('lualine').setup {
  options = { theme  = custom_theme },
}

