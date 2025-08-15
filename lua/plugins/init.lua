return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "angular",
        "css",
        "dockerfile",
        "gitcommit",
        "gitignore",
        "html",
        "html",
        "javascript",
        "json",
        "lua",
        "php",
        "scss",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
      },
    },
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
  },
  {
    "NvChad/nvcommunity",
    { import = "nvcommunity.diagnostics.trouble" },
    { import = "nvcommunity.git.diffview" },
    { import = "nvcommunity.git.lazygit" },
    { import = "nvcommunity.editor.treesittercontext" },
    { import = "nvcommunity.lsp.lspui" },
    { import = "nvcommunity.lsp.lspsaga" },
    { import = "nvcommunity.tools.telescope-fzf-native" },
  },
  {
    "uga-rosa/translate.nvim",
    cmd = { "Translate" },
  },
}
