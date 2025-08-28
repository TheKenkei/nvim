local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local base_on_attach = vim.lsp.config.eslint.on_attach

local servers = {
    "angularls",
    "bashls",
    "css_variables",
    "cssls",
    "emmet_language_server",
    "eslint",
    "html",
    "jsonls",
    "lemminx",
    "tailwindcss",
    "ts_ls",
    "docker_compose_language_service",
    "docker_language_server",
}

require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("angularls", { cmd = angular_cmd })
vim.lsp.config("cssls", { capabilities = capabilities })
vim.lsp.config("eslint", {
    on_attach = function(client, bufnr)
        if not base_on_attach then
            return
        end
        base_on_attach(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", { buffer = bufnr, command = "LspEslintFixAll" })
    end,
})
vim.lsp.config("html", { capabilities = capabilities })
vim.lsp.config("jsonls", { capabilities = capabilities })
vim.lsp.enable(servers)
