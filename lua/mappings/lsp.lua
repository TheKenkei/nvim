local map = vim.keymap.set
local del = vim.keymap.del
map("n", "<leader>ls", function()
  local aerial_avail, _ = pcall(require, "aerial")
  if aerial_avail then
    require("telescope").extensions.aerial.aerial()
  else
    require("telescope.builtin").lsp_document_symbols()
  end
end, { desc = "Search symbols" })

del("n", "<leader>q")
map("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Lsp diagnostic loclist" })
