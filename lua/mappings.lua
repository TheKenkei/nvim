require "nvchad.mappings"

local map = vim.keymap.set

--  ^^^^^^ TmuxNavigate ^^^^^^
map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })
--  vvvvvv TmuxNavigate vvvvvv

--  ^^^^^^ Eslint ^^^^^^
map("n", "<leader>le", "<cmd>EslintFixAll<cr>", { desc = "Eslint fix all problem" })
--  vvvvvv Eslint vvvvvv
--  ^^^^^^ Telescope ^^^^^^
local builtin = require "telescope.builtin"
map("n", "<leader><leader>", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fg", "<cmd>:Telescope git_files<CR>", { desc = "Git files" })
--  vvvvvv Telescope vvvvvv

--  ^^^^^^ LazyGit ^^^^^^
map("n", "<A-g>", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
--  vvvvvv LazyGit vvvvvv

--  ^^^^^^ Editor ^^^^^^
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
map("n", "<leader>q", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Close Other Tabs" })
map("i", "jj", "<ESC>")
map("n", "<A-q>", "<cmd>confirm q<cr>", { desc = "Quit" })
map("n", "<C-A-q>", "<cmd>confirm qa!<cr>", { desc = "Quit" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("i", "<CA-h>", "<C-Left>", { desc = "Left" })
map("i", "<CA-l>", "<C-Right>", { desc = "Right" })
map("n", "<C-a>", "ggVG", { desc = "Select all " })
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replase word" })
--  vvvvvv Editor vvvvvv
