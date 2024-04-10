vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	use ('nvim-treesitter/nvim-treesitter',{run = ':TSUpdate'})

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Downloaded Themes
    use "rose-pine/neovim" 
    use 'neanias/everforest-nvim'
    use 'rebelot/kanagawa.nvim'
    use 'morhetz/gruvbox'
    use 'folke/tokyonight.nvim'
end)

