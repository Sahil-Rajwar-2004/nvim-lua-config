local lsp_zero = require("lsp-zero")
local cmp = require("cmp")
local lspconfig = require("lspconfig")
local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local luasnip = require("luasnip")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = {
		["<Return>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.confirm({ select = true })
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<C-Down>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<C-Up>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { buffer = event.buf })
		vim.keymap.set("n", "<C-d>", "<cmd>lua vim.lsp.buf.definition()<cr>", { buffer = event.buf })
		vim.keymap.set("n", "<leader>vd", "<cmd>lua vim.lsp.buf.openfloat()<cr>", { buffer = event.buf })
		vim.keymap.set("n", "<leader>[d", "<cmd>lua vim.diagnostic.goto_next()<cr>", { buffer = event.buf })
		vim.keymap.set("n", "<leader>]d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { buffer = event.buf })
	end,
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

lspconfig.pyright.setup({ capabilities = lsp_capabilities })
lspconfig.rust_analyzer.setup({ capabilities = lsp_capabilities })
lspconfig.clangd.setup({ capabilities = lsp_capabilities })
lspconfig.eslint.setup({ capabilities = lsp_capabilities })
lspconfig.markdown_oxide.setup({ capabilities = lsp_capabilities })
lspconfig.vimls.setup({ capabilities = lsp_capabilities })
require("typescript-tools").setup({ capabilites = lsp_capabilities })

lsp_zero.setup({})
