local util = require "lspconfig.util"

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

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
