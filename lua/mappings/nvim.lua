local map = vim.keymap.set

local del = vim.keymap.del
del("n", "<leader>n")
del("n", "<leader>rn")
map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
map("n", "<leader>ut", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })

vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
