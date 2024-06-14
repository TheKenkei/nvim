local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap
local del = vim.keymap.del -- Импорт функции удаления клавиатурных сокращений из библиотеки vim.keymap

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
