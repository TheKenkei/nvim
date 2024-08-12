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
  },
  indent = {
    enable = true, -- Включить автоматическое определение отступов
  },
}

-- Конфигурация для Mason (набор инструментов для разработки)
M.mason = {
  ensure_installed = {
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettierd",
    "eslint_d",
  },
}

-- M.nvimtree = {
--   git = {
--     enable = true, -- Включить поддержку Git
--   },
--   renderer = {
--     highlight_git = true, -- Подсвечивать измененные файлы Git
--     icons = {
--       show = {
--         git = true, -- Показывать иконки для файлов Git
--       },
--     },
--   },
-- }
--
return M
