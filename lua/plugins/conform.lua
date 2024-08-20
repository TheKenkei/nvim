return {

  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  event = "BufWritePre", -- uncomment for format on save
  config = function()
    local util = require "conform.util"
    local conform = require("conform");
    conform.setup({
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
          cwd = util.root_file { "composer.lock" },
        },
      },

      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- Conform will run the first available formatter
        javascript = {"prettier", "prettierd",  stop_after_first = true },
        typescript = {"prettier", "prettierd", stop_after_first = true },
        json = { "prettierd", "prettier", stop_after_first = true },
        php = { "phpcsfixer", "phpcbf", "intelephense", stop_after_first = false },


      },

      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 2000,
        lsp_fallback = true,
      },
    })
  end
}
