local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap
local del = vim.keymap.del -- Импорт функции удаления клавиатурных сокращений из библиотеки vim.keymap

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
