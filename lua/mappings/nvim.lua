local map = vim.keymap.set

map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
