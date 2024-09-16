-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require "configs.lspconfigs.init"

local util = require "lspconfig.util"
local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "tsserver", "eslint", "lemminx", "emmet_language_server" }

-- lspconfig.stylelint_lsp.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
--   root_dir = util.root_pattern "package.json",
-- }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
