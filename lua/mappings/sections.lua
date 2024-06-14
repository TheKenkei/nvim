local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap
local get_icon = require("utils.init").get_icon -- Импорт функции get_icon из модуля utils.init

-- Установка клавиатурных сокращений с иконками и описаниями
map("n", "<leader>f", function() end, { desc = get_icon("Search", 1, true) .. "Find" }) -- Поиск
map("n", "<leader>p", function() end, { desc = get_icon("Package", 1, true) .. "Packages" }) -- Пакеты
map("n", "<leader>l", function() end, { desc = get_icon("ActiveLSP", 1, true) .. "LSP" }) -- LSP (Language Server Protocol)
map("n", "<leader>u", function() end, { desc = get_icon("Window", 1, true) .. "UI/UX" }) -- UI/UX
map("n", "<leader>b", function() end, { desc = get_icon("Tab", 1, true) .. "Buffers" }) -- Буферы
map("n", "<leader>d", function() end, { desc = get_icon("Debugger", 1, true) .. "Debugger" }) -- Отладчик
map("n", "<leader>g", function() end, { desc = get_icon("Git", 1, true) .. "Git" }) -- Git
map("n", "<leader>t", function() end, { desc = get_icon("Terminal", 1, true) .. "Terminal" }) -- Терминал
