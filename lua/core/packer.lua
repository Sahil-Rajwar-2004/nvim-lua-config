vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use "ferdinandrau/lavish.nvim"
  use "rebelot/kanagawa.nvim"
  use "ilof2/posterpole.nvim"
  use "vague2k/vague.nvim"
  use "navarasu/onedark.nvim"
  use "nvim-lualine/lualine.nvim"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-lua/plenary.nvim"
  use "OXY2DEV/markview.nvim"
  use "lewis6991/gitsigns.nvim"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nyoom-engineering/oxocarbon.nvim'
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "nvim-telescope/telescope.nvim", tag = "0.1.8" }
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

end)

