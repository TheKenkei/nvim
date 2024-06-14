local options = {
  -- Пакеты, которые необходимо установить
  ensure_installed = {
    "vim", -- Поддержка для Vim скриптов
    "lua", -- Поддержка для Lua
    "vimdoc", -- Документация для Vim скриптов
    "html", -- Поддержка для HTML
    "css", -- Поддержка для CSS
    "scss", -- Поддержка для SCSS
    "typescript", -- Поддержка для TypeScript
    "javascript", -- Поддержка для JavaScript
    "php", -- Поддержка для PHP
    "markdown", -- Поддержка для Markdown
    "markdown_inline", -- Поддержка для встроенного Markdown
    "prisma", -- Поддержка для Prisma
    "go", -- Поддержка для Go
  },

  -- Настройки отступов
  indent = {
    enable = true, -- Включить автоматическое определение отступов
  },
}

return options
