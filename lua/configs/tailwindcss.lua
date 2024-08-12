local util = require "lspconfig.util"

local options = {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "scss",
  },
  root_dir = util.root_pattern("tailwind.config.ts", "package.json", "node_modules", ".git"),
  settings = {
    tailwindCSS = {
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning",
      },
      validate = true,
    },
  },
}

return options
