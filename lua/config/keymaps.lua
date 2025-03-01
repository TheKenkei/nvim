-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = LazyVim.safe_keymap_set
local map = vim.keymap.set
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end

map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

map({ "n", "i", "v" }, "<CA-s>", "<cmd>wa<cr>", { desc = "Save all files" })

map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Center cursor" })
map("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Center cursor" })

map("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>", { desc = "Tmux Down" })

map("n", "<C-a>", "ggVG", { desc = "Select all " })

map("n", "\\", "<cmd>:vsplit <CR>", { desc = "Vertical split" })
map("n", "<C-\\>", "<cmd>:split <CR>", { desc = "Vertical split" })

map(
  "v",
  "<leader>ss",
  [[y:<C-u>%s/<C-r>"//g<Left><Left>]],
  { noremap = true, silent = true, desc = "Replace selected text" }
)
map("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replase word" })

map("v", "<leader>tr", "<cmd>:Translate ru<cr>", { desc = "Translate to rus" })

map("n", "<leader><leader>", "<cmd>:Telescope lsp_document_symbols<cr>", { desc = "find lsp symbols" })

map("n", "<A-/>", "<cmd>:Telescope current_buffer_fuzzy_find<cr>", { desc = "current_buffer_fuzzy_find" })

map("n", "<leader>le", "<cmd>:EslintFixAll<cr>", { desc = "Eslint" })

-- map("n", "<leader>x", function()
--   Snacks.bufdelete()
-- end, { desc = "Delete Buffer" })

map("i", "<C-e>", "<End>", { noremap = true })
map("i", "<C-b>", "<Home>", { noremap = true })

map("n", "]]", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[[", diagnostic_goto(false), { desc = "Prev Diagnostic" })

map("i", "<C-h>", "<Left>", { noremap = true, desc = "Move" })
map("i", "<C-j>", "<Down>", { noremap = true, desc = "Move" })
map("i", "<C-k>", "<Up>", { noremap = true, desc = "Move" })
map("i", "<C-l>", "<Right>", { noremap = true, desc = "Move" })

-- Split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)
