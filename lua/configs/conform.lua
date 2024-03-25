local options = {
  formatters_by_ft = {
    typescript = { "prettierd" },
    javascript = { "prettierd" },

    html = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },

    json = { "prettierd" },

    php = { "ecs" },
    yaml = { "prettierd" },
    xml = { "xmlformat" },

    lua = { "stylua" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
