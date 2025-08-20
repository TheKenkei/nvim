local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

local servers = {
    "html",
    "lemminx",
    "bashls",
    "css_variables",
    "jsonls",
    "emmet_language_server",
    "tailwindcss",
    "cssls",
    "eslint",
    "angularls",
    "ts_ls",
}

require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("angularls", {
    cmd = angular_cmd,
})

vim.lsp.enable(servers)
