local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {buffer = event.buf})
        vim.keymap.set('n','<C-d>','<cmd>lua vim.lsp.buf.definition()<cr>', {buffer = event.buf})
        vim.keymap.set('n','<leader>vd','<cmd>lua vim.lsp.buf.openfloat()<cr>', {buffer = event.buf})
        vim.keymap.set('n','<leader>[d','<cmd>lua vim.diagnostic.goto_next()<cr>', {buffer = event.buf})
        vim.keymap.set('n','<leader>]d','<cmd>lua vim.diagnostic.goto_prev()<cr>', {buffer = event.buf})
    end
})

vim.diagnostic.config({
    signs = {
        error = "✗",
        warn = "⚠️",
        hint = "",
        info = "i",
    },
    float = {
        source = "always",
    },
})

lspconfig.tsserver.setup({capabilities = lsp_capabilities})
lspconfig.rust_analyzer.setup({capabilities = lsp_capabilities})
lspconfig.pyright.setup({capabilities = lsp_capabilities})
lspconfig.clangd.setup({capabilities = lsp_capabilities})
lspconfig.eslint.setup({capabilities = lsp_capabilities})
--lspconfig.lua_ls.setup({capabilities = lsp_capabilities})
lspconfig.markdown_oxide.setup({capabilities = lsp_capabilities})
lspconfig.vimls.setup({capabilities = lsp_capabilities})


lsp_zero.setup({})

