local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    htmlangular = { "prettier" },
    javascript = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    less = { "prettier" },
    lua = { "stylua" },
    scss = { "prettier" },
    typescript = { "prettier" },
    zsh = { "beautysh" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 5000,
    lsp_fallback = true,
  },
}

return options
