local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap

-- Настройка клавиатурных сокращений
map("i", "jj", "<ESC>") -- В режиме вставки (insert mode) заменяем "jj" на клавишу Escape ("<ESC>")

map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Buffer New" }) -- В нормальном режиме (normal mode) нажатие <leader>bn открывает новый буфер с помощью команды "enew", с описанием "Buffer New"

map("n", "<leader>bc", function()
  require("utils.buffers").close_all(true)
end, { desc = "Close other buffers" }) -- Настройка для <leader>bc в нормальном режиме, вызывает функцию для закрытия всех буферов, кроме текущего, с описанием "Close other buffers"

map("n", "<leader>bC", function()
  require("utils.buffers").close_all()
end, { desc = "Close all buffers" }) -- Настройка для <leader>bC в нормальном режиме, вызывает функцию для закрытия всех буферов, включая текущий, с описанием "Close all buffers"
