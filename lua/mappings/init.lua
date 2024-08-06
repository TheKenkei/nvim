require "nvchad.mappings" -- Подключение основного файла с настройками клавиатурных сокращений из nvchad
local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap
local get_icon = require("utils.init").get_icon -- Импорт функции get_icon из модуля utils.init

map("i", "jj", "<ESC>") -- Вставка "jj" будет заменяться на клавишу Escape ("<ESC>")

-- Установка клавиатурных сокращений с иконками и описаниями
map("n", "<leader>f", function() end, { desc = get_icon("Search", 1, true) .. "Find" }) -- Поиск
map("n", "<leader>p", function() end, { desc = get_icon("Package", 1, true) .. "Packages" }) -- Пакеты
map("n", "<leader>l", function() end, { desc = get_icon("ActiveLSP", 1, true) .. "LSP" }) -- LSP (Language Server Protocol)
map("n", "<leader>u", function() end, { desc = get_icon("Window", 1, true) .. "UI/UX" }) -- UI/UX
map("n", "<leader>b", function() end, { desc = get_icon("Tab", 1, true) .. "Buffers" }) -- Буферы
map("n", "<leader>d", function() end, { desc = get_icon("Debugger", 1, true) .. "Debugger" }) -- Отладчик
map("n", "<leader>g", function() end, { desc = get_icon("Git", 1, true) .. "Git" }) -- Git
map("n", "<leader>t", function() end, { desc = get_icon("Terminal", 1, true) .. "Terminal" }) -- Терминал

-- Настройка клавиатурных сокращений
map("i", "jj", "<ESC>") -- В режиме вставки (insert mode) заменяем "jj" на клавишу Escape ("<ESC>")

map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Buffer New" }) -- В нормальном режиме (normal mode) нажатие <leader>bn открывает новый буфер с помощью команды "enew", с описанием "Buffer New"

map("n", "<leader>bc", function()
  require("utils.buffers").close_all(true)
end, { desc = "Close other buffers" }) -- Настройка для <leader>bc в нормальном режиме, вызывает функцию для закрытия всех буферов, кроме текущего, с описанием "Close other buffers"

map("n", "<leader>bC", function()
  require("utils.buffers").close_all()
end, { desc = "Close all buffers" }) -- Настройка для <leader>bC в нормальном режиме, вызывает функцию для закрытия всех буферов, включая текущий, с описанием "Close all buffers"

map("n", "<A-g>", function()
  require("nvchad.term").new { pos = "sp", id = "floa", cmd = "lazygit" .. ";exit", size = 1, clear_cmd = true }
end, { desc = "Lazygit" }) -- Описание команды для справки и отображения в пользовательском интерфейсе

-- Настройка клавиатурного сокращения для поиска символов
map("n", "<leader>ls", function()
  local aerial_avail, _ = pcall(require, "aerial") -- Проверка доступности пакета aerial
  if aerial_avail then
    require("telescope").extensions.aerial.aerial() -- Если aerial доступен, вызываем его для поиска символов
  else
    require("telescope.builtin").lsp_document_symbols() -- В противном случае используем встроенную функцию telescope для поиска символов LSP
  end
end, { desc = "Search symbols" }) -- Описание команды для справки и отображения в пользовательском интерфейсе

-- Настройка клавиатурного сокращения для открытия списка диагностик LSP
map("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Lsp diagnostic loclist" })

-- Настройка клавиатурного сокращения для перехода к предыдущему диагностическому сообщению и вызова действия code action
map("n", "[[", function()
  vim.diagnostic.goto_prev() -- Переход к предыдущему диагностическому сообщению
  vim.lsp.buf.code_action() -- Вызов действия code action
end, { desc = "Lsp prev diagnostic" }) -- Описание команды для справки и отображения в пользовательском интерфейсе

-- Настройка клавиатурного сокращения для перехода к следующему диагностическому сообщению и вызова действия code action
map("n", "]]", function()
  vim.diagnostic.goto_next() -- Переход к следующему диагностическому сообщению
  vim.lsp.buf.code_action() -- Вызов действия code action
end, { desc = "Lsp next diagnostic" }) -- Описание команды для справки и отображения в пользовательском интерфейсе

-- Установка клавиатурных сокращений для команд выхода
map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" }) -- Alt+q для выхода с подтверждением
map("n", "<C-A-q>", "<cmd>confirm qa!<cr>", { desc = "Quit" }) -- Ctrl+Alt+q для выхода с подтверждением без сохранения

map("t", "<C-A-q>", "<cmd>exit;  qa!<cr>", { desc = "Quit" }) -- Ctrl+Alt+q для выхода с подтверждением без сохранения
-- Установка клавиатурного сокращения для вертикального разделения окна
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })

-- Установка клавиатурного сокращения для вызова Telescope с темами
map("n", "<leader>ut", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })

-- Установка клавиатурного сокращения в режиме вставки для вызова функции vim.fn["codeium#Accept"]()
vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })

-- Установка клавиатурных сокращений для перемещения по панелям Tmux
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })

-- Установка клавиатурного сокращения для выполнения замены во всем файле
map("n", "<leader>df", "<cmd>:%s//<cr>", { desc = "Delete find word" })
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Установка клавиатурных сокращений
map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp", size = 0.3 }
end, { desc = "Terminal New horizontal term" }) -- Создание нового горизонтального терминала

map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp", size = 0.3 }
end, { desc = "Terminal New vertical window" }) -- Создание нового вертикального терминала

-- Установка клавиатурных сокращений в режиме терминала
map("t", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" }) -- Переход вправо в терминале
map("t", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" }) -- Переход влево в терминале
map("t", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" }) -- Переход вверх в терминале
map("t", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" }) -- Переход вниз в терминале
map("n", "<leader>le", "<cmd:EslintFixAll<cr>", { desc = "Eslint fix all" })
map("i", "<C-s>", "<cmd>:w<cr><ESC>", { desc = "Save" })

map("n", "<A-e>", function()
  require("nvchad.term").new { pos = "sp", id = "floa", cmd = "lazygit", size = 1, clear_cmd = true }
end, { desc = "Test" })
