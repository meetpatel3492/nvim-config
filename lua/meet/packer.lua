-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'BurntSushi/ripgrep' }
        }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    --- themes
    use({ 'sainnhe/sonokai', as = 'sonokai' })
    use({ 'morhetz/gruvbox', as = 'gruvbox' })
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'catppuccin/vim', as = 'catppuccin' })
    --- themes

    use('mrjones2014/nvim-ts-rainbow')
    use('nvim-tree/nvim-web-devicons')
    use('jiangmiao/auto-pairs')

    use("j-hui/fidget.nvim", { tag = "legacy" })
    -- kickstart vim configurations
    use("lewis6991/gitsigns.nvim")
end)
