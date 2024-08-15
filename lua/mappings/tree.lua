local map = vim.keymap.set

map("n", "<leader>e", "<cmd>:NvimTreeFocus<cr>", { desc = "NvimTreeFocus" })
map("n", "<c-n>", "<cmd>:NvimTreeToggle<cr>", { desc = "NvimTreeToggle" })
