local map = vim.keymap.set
local tabs = require "nvchad.tabufline"

map("n", "<leader>qq", function()
  tabs.closeAllBufs(false)
end, { desc = "Close Other Tabs" })
map("n", "<leader>ql", function()
  tabs.closeBufs_at_direction "right"
end, { desc = "Close Other Tabs" })
map("n", "<leader>qh", function()
  tabs.closeBufs_at_direction "left"
end, { desc = "Close Other Tabs" })
