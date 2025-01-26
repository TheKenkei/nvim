local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local util = require "lspconfig.util"

local servers = { "intelephense", "phpactor" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    root_dir = util.root_pattern "composer.lock",
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
