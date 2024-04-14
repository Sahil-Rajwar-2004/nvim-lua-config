vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use({
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	})

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	--[[
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }
    ]]
	--

	use("tpope/vim-fugitive")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use("lukas-reineke/indent-blankline.nvim")

	use("folke/neodev.nvim")

	use("folke/neoconf.nvim")

	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use({
		"pmizio/typescript-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
	})

	use({
		"VonHeikemen/searchbox.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use("rcarriga/nvim-notify")

	use("voldikss/vim-floaterm")

	use("folke/noice.nvim")

	use("ThePrimeagen/harpoon")

	use("ntpeters/vim-better-whitespace")

	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/nvim-cmp" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "L3MON4D3/LuaSnip", run = "make install_jsregexp" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	-- Downloaded Themes
	use("rose-pine/neovim")
	use("neanias/everforest-nvim")
	use("rebelot/kanagawa.nvim")
	use("morhetz/gruvbox")
	use("folke/tokyonight.nvim")
end)
