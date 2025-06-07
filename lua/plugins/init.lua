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

        -- { import = "nvcommunity.editor.cutlass" },
        -- { import = "nvcommunity.editor.satellite" },
        { import = "nvcommunity.editor.treesittercontext" },

        -- { import = "nvcommunity.folds.origami" },

        { import = "nvcommunity.git.diffview" },
        { import = "nvcommunity.git.lazygit" },

        { import = "nvcommunity.lsp.barbecue" },
        { import = "nvcommunity.lsp.lspui" },
        { import = "nvcommunity.lsp.lspsaga" },

        { import = "nvcommunity.tools.telescope-fzf-native" },

        { import = "nvchad.blink.lazyspec" },
    },
    {
        "uga-rosa/translate.nvim",
        cmd = { "Translate" },
    },
}
