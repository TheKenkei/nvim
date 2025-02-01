local map = vim.keymap.set
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", { desc = "Save" })
map({ "n", "i", "v" }, "<CA-s>", "<cmd>wa<cr>", { desc = "Save all files" })

map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" })
map("n", "<C-A-q>", "<esc><esc><cmd>confirm qa!<cr>", { desc = "Quit" })

map("n", "<C-g>", function()
    return vim.fn["codeium#Accept"]()
end, { desc = "Codeium accesst" })
map("n", "c", '"_c', { noremap = true })
map("n", "C", '"_C', { noremap = true })
