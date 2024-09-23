-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require "configs.lspconfigs.init"

local util = require "lspconfig.util"
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = { "html", "ts_ls", "lemminx" }

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
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  root_dir = util.root_pattern(".eslintrc", ".eslintrc.json", "package.json"),
  settings = {
    packageManager = "npm",
  },
}
