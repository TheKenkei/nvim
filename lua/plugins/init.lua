return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = { "TmuxNavigateLeft", "TmuxNavigateDown", "TmuxNavigateUp", "TmuxNavigateRight", "TmuxNavigatePrevious" },
  },

  {
    "uga-rosa/translate.nvim",
    cmd = { "Translate" },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        html = {},
        ts_ls = {},
        cssls = {},
        emmet_ls = {},
        css_variables = {},
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("nx.json", "angular.json")(fname) or vim.loop.cwd()
          end,
        },
      },
    },
  },
}
