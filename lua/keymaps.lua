require "nvchad.mappings"

local map = vim.keymap.set
local del = vim.keymap.del
local tabs = require "nvchad.tabufline"

local function cmd(opt)
    return "<cmd>" .. opt .. "<cr>"
end
del("n", "<leader>h")
del("n", "<leader>v")

map("i", "jk", "<ESC>")
map("n", "<leader>qq", cmd "qa", { desc = "Quit" })
map("n", "<leader>gh", cmd "Nvdash", { desc = "Open star page" })

map("n", "<leader>qa", function()
    tabs.closeAllBufs(false)
end, { desc = "Close Other Tabs" })
map("n", "<leader>ql", function()
    tabs.closeBufs_at_direction "right"
end, { desc = "Close Other Tabs" })
map("n", "<leader>qh", function()
    tabs.closeBufs_at_direction "left"
end, { desc = "Close Other Tabs" })

map("n", "<C-d>", "<C-d>zz", { desc = "Center cursor before scroll" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center cursor before scroll" })

map("n", "sv", cmd ":vsplit", { desc = "Vertical split" })
map("n", "sh", cmd ":split", { desc = "Vertical split" })

map("n", "<C-a>", "ggVG", { desc = "Select all" })

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
map("v", "<leader>tr", cmd ":Translate ru", { desc = "Translate to rus" })
map("n", "<leader><leader>", cmd ":Telescope lsp_document_symbols", { desc = "find lsp symbols" })
map("n", "<A-/>", cmd ":Telescope current_buffer_fuzzy_find", { desc = "current_buffer_fuzzy_find" })

map("n", "<leader>gg", cmd "LazyGit ", { desc = "LazyGit" })
map("n", "<leader>gb", cmd "Gitsigns toggle_current_line_blame", { desc = "Git blame toggle" })

map({ "n", "i", "v" }, "<C-s>", cmd "w", { desc = "Save" })
map({ "n", "i", "v" }, "<CA-s>", cmd "wa", { desc = "Save all files" })

map("n", "<A-q>", cmd "confirm q", { desc = "Quit" })
map("n", "<C-A-q>", cmd "confirm qa!", { desc = "Quit" })

map("n", "c", '"_c', { noremap = true })
map("n", "C", '"_C', { noremap = true })

map("n", "<leader>le", cmd ":EslintFixAll", { desc = "Eslint" })
map("n", "<leader>lr", cmd ":LspUI rename", { desc = "Rename" })
map("n", "]]", cmd ":LspUI diagnostic next", { desc = "Next diagnostic" })
map("n", "[[", cmd ":LspUI diagnostic prev", { desc = "Prev diagnostic" })

--  ^^^^^^ TmuxNavigate ^^^^^^
map("n", "<c-l>", cmd ":TmuxNavigateRight", { desc = "Tmux Right" })
map("n", "<c-h>", cmd ":TmuxNavigateLeft", { desc = "Tmux Left" })
map("n", "<c-k>", cmd ":TmuxNavigateUp", { desc = "Tmux Up" })
map("n", "<c-j>", cmd ":TmuxNavigateDown", { desc = "Tmux Down" })

map("n", "<C-g>", function()
    return vim.fn["codeium#Accept"]()
end, { desc = "Codeium accesst" })
