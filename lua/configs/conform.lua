local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    scss = { "prettierd" },
    html = { "prettierd" },
    typescript = { "prettierd" },
    javascript = { "prettierd" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}

return options
