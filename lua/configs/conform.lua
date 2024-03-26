local util = require "conform.util"
require("conform").setup {
  formatters = {
    phpcsfixer = {
      meta = {

        url = "https://github.com/PHP-CS-Fixer/PHP-CS-Fixer",
        description = "The PHP Coding Standards Fixer.",
      },
      command = util.find_executable({
        "tools/php-cs-fixer/vendor/bin/php-cs-fixer",
        "vendor/bin/php-cs-fixer",
      }, "php-cs-fixer"),
      args = { "fix", "$FILENAME" },
      stdin = false,
      cwd = util.root_file { "composer.json" },
      -- Change where to find the command
    },
  },
}
local options = {
  formatters_by_ft = {
    typescript = { "prettierd" },
    javascript = { "prettierd" },

    html = { "prettierd" },
    css = { "prettierd" },
    scss = { "prettierd" },

    json = { "prettierd" },

    php = { "phpcsfixer" },
    yaml = { "prettierd" },
    xml = { "xmlformat" },

    lua = { "stylua" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
