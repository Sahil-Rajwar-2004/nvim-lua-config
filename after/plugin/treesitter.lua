require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "javascript", "html", "css", "bash", "json", "markdown", "typescript" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "haskell" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- Start selection
      node_incremental = "grn", -- Increment to the next node
      scope_incremental = "grc", -- Increment scope
      node_decremental = "grm", -- Decrement to the previous node
    },
  },

  indent = {
    enable = true,
  },

  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines
  },
}
