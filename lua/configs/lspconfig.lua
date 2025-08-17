local base_on_attach = vim.lsp.config.eslint.on_attach

local util = require "lspconfig.util"
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = { "html", "vtsls", "lemminx", "bashls", "css_variables", "jsonls" }

local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

require("nvchad.configs.lspconfig").defaults()

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

lspconfig.emmet_language_server.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    filetypes = {
        "html",
    },
}

lspconfig.lemminx.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    filetypes = {
        "xml",
    },
}

lspconfig.eslint.setup {
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
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    filetypes = {
        "html",
        "typescript",
        "javascript",
    },
}

lspconfig.angularls.setup {
    on_attach = nvlsp.on_attach,
    cmd = angular_cmd,
    root_dir = util.root_pattern("nx.json", "package.json"),
    on_new_config = function(new_config, new_root_dir)
        new_config.cmd = angular_cmd
    end,
}

lspconfig.tailwindcss.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = {
        filetypes = {
            "html",
            "htmlangular",
            "sass",
            "scss",
        },
    },
}

lspconfig.cssls.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    settings = {
        scss = {
            validate = false, -- отключить валидацию SCSS
        },
    },
}
