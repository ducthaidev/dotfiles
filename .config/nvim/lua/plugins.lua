return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")
    -- better escape
    use({
        "max397574/better-escape.nvim",
    })
    -- nerdtree
    --use("preservim/nerdtree")
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- vim surround
    use("tpope/vim-surround")
    -- easymotion
    use("easymotion/vim-easymotion")
    -- fzf
    use("junegunn/fzf")
    -- telescope
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })
    -- cmp
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp") -- Autocompletion plugin
    use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip")
    -- neovim lsp
    use("neovim/nvim-lspconfig") -- Collection of configurations for built-in LSP client
    -- lualine
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    -- null-ls
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("null-ls").setup()
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })
    -- autopairs
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup()
        end,
    })
    -- fugitive
    use({ "tpope/vim-fugitive" })
    -- onedark
    use 'navarasu/onedark.nvim'
    -- markdown glow
    use { "ellisonleao/glow.nvim", branch = 'main' }
    -- css color
    use { "norcalli/nvim-colorizer.lua" }
    -- Fterm
    use "numToStr/FTerm.nvim"
    -- vim go
    use "fatih/vim-go"
end)
