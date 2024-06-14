local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap

map("n", "<leader>gg", function()
  local worktree = require("utils.git").file_worktree() -- Получение рабочего дерева Git для текущего файла
  local flags = worktree and (" --work-tree=%s --git-dir=%s"):format(worktree.toplevel, worktree.gitdir) or "" -- Формирование флагов для lazygit, если рабочее дерево определено

  -- Запуск lazygit во всплывающем терминале
  require("nvchad.term").new {
    pos = "float", -- Позиция терминала (всплывающее окно)
    id = "floatTerm", -- Идентификатор терминала
    cmd = "lazygit " .. flags .. ";exit", -- Команда для запуска lazygit с указанными флагами и закрытие терминала после выполнения
  }
end, { desc = "Lazygit" }) -- Описание команды для справки и отображения в пользовательском интерфейсе
