-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<ESC><ESC>', ':nohlsearch<CR>')

local map = vim.keymap.set

map({ "n", "i", "v" }, "<C-s>", function()
  vim.lsp.buf.format {}
  vim.cmd "write"
end, { desc = "Save" })

map("n", "<A-g>", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })

-- TODO REFACTOR :
map("i", "jj", "<ESC>")
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Buffer New" })
map("n", "<leader>bC", "<cmd>:%bd|e#<cr>", { desc = "Close Other Tabs" })
map("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Lsp diagnostic loclist" })
map("n", "[[", function()
  vim.diagnostic.goto_prev()
  vim.lsp.buf.code_action()
end, { desc = "Lsp prev diagnostic" })
map("n", "]]", function()
  vim.diagnostic.goto_next()
  vim.lsp.buf.code_action()
end, { desc = "Lsp next diagnostic" })
map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" })
map("n", "<leader>qq", "<cmd>confirm qa<cr>", { desc = "Quit" })
map("n", "<C-A-q>", "<cmd>confirm qa!<cr>", { desc = "Quit" })
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
vim.keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })
map("n", "<leader>df", "<cmd>:%s//<cr>", { desc = "Delete find word" })
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp", size = 0.3 }
end, { desc = "Terminal New horizontal term" })
map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp", size = 0.3 }
end, { desc = "Terminal New vertical window" })
map("n", "<leader>le", "<cmd:EslintFixAll<cr>", { desc = "Eslint fix all" })
map("i", "<C-s>", "<cmd>:w<cr><ESC>", { desc = "Save" })
map("n", "<A-e>", function()
  require("nvchad.term").new { pos = "sp", id = "floa", cmd = "lazygit", size = 1, clear_cmd = true }
end, { desc = "Test" })
map("i", "<CA-h>", "<C-Left>", { desc = "Left" })
map("i", "<CA-l>", "<C-Right>", { desc = "Right" })
map("i", "<CA-k>", "<{>", { desc = "Up" })
map("i", "<CA-j>", "<}>", { desc = "Down" })
map("n", "<C-a>", "ggVG", { desc = "Select all " })
