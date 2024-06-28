local util = require "conform.util"
local conform = require "conform"

-- Общие настройки форматтеров
local formatters = {
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
  },
}

-- Опции для настройки форматтеров по типам файлов
local formatters_by_ft = {
  lua = { "stylua" },
  html = { "prettier" },
  css = { "prettier" },
  scss = { "prettier" },
  javascript = { "prettier" },
  typescript = { "prettier" },
  javascriptreact = { "prettier" },
  typescriptreact = { "prettier" },
  markdown = { "prettier" },
  markdown_inline = { "prettier" },
  zsh = { "beautysh" },
  json = { "prettier" },
  jsonc = { "prettier" },
  php = { "phpcsfixer" },
  yaml = { "prettier" },
  xml = { "xmlformat" },
  bash = { "shfmt" },
  sh = { "shfmt" },
}

-- Опции форматирования при сохранении
local format_on_save = {
  timeout_ms = 2000, -- Таймаут (в миллисекундах) для форматирования при сохранении
  lsp_fallback = true, -- Использовать LSP в качестве запасного варианта для форматирования
}

-- Настройка Conform
conform.setup {
  formatters = formatters, -- Передача определенных форматтеров
  formatters_by_ft = formatters_by_ft, -- Соответствие форматтеров по типам файлов
  format_on_save = format_on_save, -- Опции форматирования при сохранении
}
