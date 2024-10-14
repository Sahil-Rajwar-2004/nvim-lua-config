# NeoVim Config with LUA

### ***I mean pure LUA***


## Notes you should take:
* NeoVim version >= 0.8 (mine is v0.10.1), I would recommend you to go for version 0.10.1 or above, click here 👉 [download](https://github.com/neovim/neovim/releases)
* file structure matters
* If you stuck read the documentation
* you should know what you are doing


## ***Installation***
### Asumming that you already have NeoVim version >= 0.8 or above
1. you need to install `packer.nvim` (required) source 👉 [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart)
    
2. clone this repo

    ```bash
    git clone "https://github.com/Sahil-Rajwar-2004/nvim-lua-config.git" ~/.config/nvim
    ```

3. remove `.git` file

    ```bash
    rm -fr .git
    ```

4. navigate to your lua/core/packer.lua 👍
    ```bash
    nvim ~/.config/nvim/lua/core/packer.lua
    ```

5. use these commands to install `plugins`, `keymaps`, `colorschemes` and other configurations
     
     source the file
     ```bash
     :so
     ```

     install necessary configurations
     ```bash
     :PackerSync
     ```

6. reopen your neovim and everything should work fine  👍

### plugins src:
- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [ferdinandrau/lavish.nvim](https://github.com/ferdinandrau/lavish.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [ilof2/posterpole.nvim](https://github.com/ilof2/posterpole.nvim)
- [vague2k/vague.nvim](https://github.com/vague2k/vague.nvim)
- [navarasu/onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [OXY2DEV/markview.nvim](https://github.com/OXY2DEV/markview.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [nyoom-engineering/oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)

and many more

### other resources:
* [ThePrimeagen](https://www.youtube.com/watch?v=w7i4amO_zaE)
* [r/neovim](https://www.reddit.com/r/neovim/)

there are many more plugins available in the market, search a bit, you'll find more plugins
you can show your some creativity while configuring your own neovim, its fun believe me

