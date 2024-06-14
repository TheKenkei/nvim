require "nvchad.mappings" -- Подключение основного файла с настройками клавиатурных сокращений из nvchad

local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap

map("i", "jj", "<ESC>") -- Вставка "jj" будет заменяться на клавишу Escape ("<ESC>")

-- Подключение настроек для различных модулей с клавиатурными сокращениями
require "mappings.buffers" -- Настройки для работы с буферами
require "mappings.git" -- Настройки для работы с Git
require "mappings.lsp" -- Настройки для Language Server Protocol (LSP)
require "mappings.nvim" -- Настройки для Neovim
require "mappings.sections" -- Настройки для разделов
require "mappings.terminal" -- Настройки для терминала
