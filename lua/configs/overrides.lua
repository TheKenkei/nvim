local M = {}

-- Конфигурация для Treesitter
M.treesitter = {
  ensure_installed = {
    "vim", -- Поддержка Vim скриптов
    "lua", -- Поддержка Lua
    "html", -- Поддержка HTML
    "css", -- Поддержка CSS
    "javascript", -- Поддержка JavaScript
    "typescript", -- Поддержка TypeScript
    "tsx", -- Поддержка TSX (TypeScript JSX)
    "c", -- Поддержка языка C
    "markdown", -- Поддержка Markdown
    "markdown_inline", -- Поддержка встроенного Markdown
    "prisma", -- Поддержка Prisma
    "go", -- Поддержка Go
  },
  indent = {
    enable = true, -- Включить автоматическое определение отступов
  },
}

-- Конфигурация для Mason (набор инструментов для разработки)
M.mason = {
  ensure_installed = {
    "lua-language-server", -- Lua Language Server
    "css-lsp", -- Language Server для CSS
    "html-lsp", -- Language Server для HTML
    "typescript-language-server", -- TypeScript Language Server
    "deno", -- Deno Language Server
    "prettier", -- Prettier
    "eslint-lsp", -- ESLint для JavaScript и TypeScript
    "clangd", -- Clangd для языка C и C++
    "clang-format", -- Clang-Format для форматирования кода на C и C++
    "node-debug2-adapter", -- Adapter для отладки Node.js
    "gopls", -- Go Language Server
    "gradle_ls", -- Gradle Language Server
  },
}

-- Конфигурация для NvimTree (плагин файлового менеджера)
M.nvimtree = {
  git = {
    enable = true, -- Включить поддержку Git
  },
  renderer = {
    highlight_git = true, -- Подсвечивать измененные файлы Git
    icons = {
      show = {
        git = true, -- Показывать иконки для файлов Git
      },
    },
  },
}

return M
