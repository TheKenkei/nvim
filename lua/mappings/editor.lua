local map = vim.keymap.set

map("n", "<C-d>", "<C-d>zz", { desc = "Center cursor" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center cursor" })

map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
map("n", "<C-\\>", "<cmd>:split <CR>", { desc = "Vertical split" })

map("n", "<C-a>", "ggVG", { desc = "Select all " })

map(
    "v",
    "<leader>ss",
    [[y:<C-u>%s/<C-r>"//g<Left><Left>]],
    { noremap = true, silent = true, desc = "Replace selected text" }
)
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replase word" })

map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "move line down" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true, desc = "move line down" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "move line down" })

map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "move line up" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true, desc = "move line up" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "move line up" })
map("v", "<leader>tr", "<cmd>:Translate ru<cr>", { desc = "Translate to rus" })
map("n", "<leader><leader>", "<cmd>:Telescope lsp_document_symbols<cr>", { desc = "find lsp symbols" })
