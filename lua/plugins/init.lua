return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require "configs.conform",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = require "configs.treesitter",
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
    },
    {
        "NvChad/nvcommunity",
        { import = "nvcommunity.diagnostics.trouble" },

        -- Scrollbar right
        { import = "nvcommunity.editor.satellite" },

        { import = "nvcommunity.editor.treesittercontext" },

        { import = "nvcommunity.git.diffview" },
        { import = "nvcommunity.git.lazygit" },

        { import = "nvcommunity.lsp.lspui" },
        { import = "nvcommunity.lsp.lspsaga" },
        { import = "nvcommunity.tools.telescope-fzf-native" },
        -- { import = "nvchad.blink.lazyspec" },
    },
    {
        "uga-rosa/translate.nvim",
        cmd = { "Translate" },
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            require("luasnip.loaders.from_vscode").load { paths = { "./snippets" } }
        end,
    },
    {
        "fnune/codeactions-on-save.nvim",
        config = function()
            local cos = require "codeactions-on-save"
            cos.register({ "*.ts", "*.tsx" }, { "source.organizeImports.biome", "source.fixAll" })
        end,
    },
}
