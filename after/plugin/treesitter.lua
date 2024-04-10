require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "tsx", "html", "json", "gitignore","cpp", "nasm", "python", "typescript", "csv", "rust", "java", "c", "lua", "vim", "vimdoc", "query" },
	sync_install = false,
  	auto_install = true,
  	highlight = {
    	enable = true,
    	additional_vim_regex_highlighting = true,
  	},
}
