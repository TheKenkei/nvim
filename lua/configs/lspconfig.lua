local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

local base_on_attach = vim.lsp.config.eslint.on_attach
local servers = {
    "html",
    -- "vtsls",
    "lemminx",
    "bashls",
    "css_variables",
    "jsonls",
    "emmet_language_server",
    "lemminx",
    "tailwindcss",
    "cssls",
    "eslint",
    "angularls",
    "tsgo",
    "ts_ls",
}

require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("eslint", {
    on_attach = function(client, bufnr)
        if not base_on_attach then
            return
        end

        base_on_attach(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "LspEslintFixAll",
        })
    end,
})

vim.lsp.config("angularls", {
    cmd = angular_cmd,
})

vim.lsp.enable(servers)
