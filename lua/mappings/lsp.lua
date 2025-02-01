local map = vim.keymap.set

map("n", "<leader>le", "<cmd>:EslintFixAll<cr>", { desc = "Eslint" })
map("n", "<leader>lr", "<cmd>:LspUI rename<cr>", { desc = "Rename" })
map("n", "]]", "<cmd>:LspUI diagnostic next<cr>", { desc = "Next diagnostic" })
map("n", "[[", "<cmd>:LspUI diagnostic prev<cr>", { desc = "Prev diagnostic" })
