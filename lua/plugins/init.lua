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

        dependencies = {
            "DaikyXendo/nvim-material-icon",
        },
        opts = require "configs.treesitter",
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
    },
    {
        "NvChad/nvcommunity",
        { import = "nvcommunity.git.diffview" },
        { import = "nvcommunity.git.lazygit" },
        { import = "nvcommunity.diagnostics.trouble" },
        { import = "nvcommunity.editor.cutlass" },
        { import = "nvcommunity.editor.satellite" },
        { import = "nvcommunity.editor.treesittercontext" },
        { import = "nvcommunity.lsp.lspui" },
        { import = "nvcommunity.tools.telescope-fzf-native" },
    },
    {
        "uga-rosa/translate.nvim",
        cmd = { "Translate" },
    },
}
