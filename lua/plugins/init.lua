return {
  "nvim-tree/nvim-tree.lua",
  "ellisonleao/gruvbox.nvim",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  "preservim/vimux",
  "tpope/vim-fugitive",
  "tpope/vim-surround",

  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "neovim/nvim-lspconfig",
  "nvimtools/none-ls.nvim",

  { "stevearc/dressing.nvim", lazy = false, opts = {} },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Зависимости для todo-comments.nvim
    lazy = false,                               -- Не ленивая загрузка
    config = function()
      require("todo-comments").setup()          -- Установка настроек для todo-comments.nvim
    end,
  },
}
