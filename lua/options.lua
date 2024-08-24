require "nvchad.options"

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

vim.wo.number = true

local opt = vim.opt
local o = vim.o
o.clipboard = "unnamedplus"
o.relativenumber = true
o.cursorlineopt = "both" -- to enable cursorline!

opt.scrolloff = 10
opt.tabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

opt.backspace = "2"
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
