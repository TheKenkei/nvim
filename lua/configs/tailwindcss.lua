local util = require "lspconfig.util"

local options = {
  cmd = { "tailwindcss-language-server", "--stdio" }, -- Команда для запуска Language Server Tailwind CSS
  filetypes = {
    "html",
    "css",
    "less",
    "sass",
    "scss",
    "typescript",
    "typescriptreact",
  }, -- Список типов файлов, для которых будет активирован Language Server
  root_dir = util.root_pattern( -- Функция для определения корневой директории проекта
    "tailwind.config.js",
    "tailwind.config.ts",
    "postcss.config.js",
    "postcss.config.ts",
    "package.json",
    "node_modules",
    ".git"
  ),
  settings = {
    tailwindCSS = {
      lint = {
        cssConflict = "warning", -- Предупреждение при конфликте CSS
        invalidApply = "error", -- Ошибка при неверном применении
        invalidConfigPath = "error", -- Ошибка при неверном пути конфигурации
        invalidScreen = "error", -- Ошибка при неверном экране
        invalidTailwindDirective = "error", -- Ошибка при неверной директиве Tailwind
        invalidVariant = "error", -- Ошибка при неверном варианте
        recommendedVariantOrder = "warning", -- Предупреждение о рекомендуемом порядке вариантов
      },
      validate = true, -- Включить валидацию конфигурации Tailwind CSS
    },
  },
}

return options
