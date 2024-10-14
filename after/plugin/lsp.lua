local cmp = require'cmp'
local lspconfig = require'lspconfig'
local lspkind = require('lspkind')
require("mason").setup()



require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "rust_analyzer" } -- List servers you want installed
})

require("mason-lspconfig").setup_handlers({
    function (server_name)
        require("lspconfig")[server_name].setup{}
    end,
})



cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',  -- Show symbol and text
      maxwidth = 50,         -- Limit width of completion popup
      ellipsis_char = '...', -- Show ellipsis if the name is too long
    })
  }
})

-- Set up the LSP server with nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.clangd.setup{
  capabilities = capabilities
}

lspconfig.rust_analyzer.setup{
  capabilities = capabilities
}


local on_attach = function(_, bufnr)
  local opts = { noremap=true, silent=true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-d>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
end

require'lspconfig'.clangd.setup{
  on_attach = on_attach
}

require'lspconfig'.rust_analyzer.setup {
  capabilities = capabilities,
}

