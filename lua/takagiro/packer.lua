-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {{'nvim-lua/plenary.nvim'}}}
    use {"rinx/nvim-ripgrep", config = function() require("nvim-ripgrep").setup { } end}
    -- use({'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end})
    use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
	'neovim/nvim-lspconfig',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim'
    }
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'rafamadriz/friendly-snippets'
    use('m4xshen/autoclose.nvim')
    use { 'mhartington/formatter.nvim' }

    -- golang
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
