-- auto PackerCompile
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

--plugins
return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- file manger
    use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly'    
    }   
   
    use 'jiangmiao/auto-pairs'
    use 'tpope/vim-commentary' 
    use 'tpope/vim-surround'

    -- themes
    use 'morhetz/gruvbox' 
    use 'alessandroyorba/alduin'
    use "rebelot/kanagawa.nvim"

    use 'mattn/emmet-vim' 

    -- syntax higliting
    use 'sheerun/vim-polyglot'
    use "ap/vim-css-color"
    use 'valloric/MatchTagAlways'
    use 'mboughaba/i3config.vim'

    -- transperancy in vim
    use 'xiyaowong/nvim-transparent'

    -- lsp settings
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    -- use 'nvim-lua/plenary.nvim'

    -- autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    --telescope

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    }
    use "nvim-telescope/telescope-file-browser.nvim"
end)
