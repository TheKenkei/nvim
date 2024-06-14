local map = vim.keymap.set -- Импорт функции установки клавиатурных сокращений из библиотеки vim.keymap

-- Установка клавиатурных сокращений для команд выхода
map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" }) -- Alt+q для выхода с подтверждением
map("n", "<C-A-q>", "<cmd>confirm qa!<cr>", { desc = "Quit" }) -- Ctrl+Alt+q для выхода с подтверждением без сохранения

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
