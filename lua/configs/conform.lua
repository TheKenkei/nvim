local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        scss = { "prettier" },
        less = { "prettier" },
        html = { "prettier" },
        htmlangular = { "prettier" },
        typescript = { "prettier" },
        javascript = { "prettier" },
        json = { "prettier" },
        jsonc = { "prettier" },
        zsh = { "beautysh" },
    },

    format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
    },
}

return options
