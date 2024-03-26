local map = vim.keymap.set
local del = vim.keymap.del
del("t", "<ESC>")
del("n", "<leader>h")
del("n", "<leader>v")

map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp", size = 0.3 }
end, { desc = "Terminal New horizontal term" })

map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp", size = 0.3 }
end, { desc = "Terminal New vertical window" })
