-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
local util = require "lspconfig.util"

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

lspconfig.angularls.setup {
  on_attach = nvlsp.on_attach,
  cmd = angular_cmd,
  root_dir = util.root_pattern "package.json",
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = angular_cmd
  end,
}
lspconfig.tsserver.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
