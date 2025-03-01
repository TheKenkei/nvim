require "nvchad.options"

vim.cmd [[ set noswapfile ]]

local opt = vim.opt
local o = vim.o

o.clipboard = "unnamedplus"
o.relativenumber = true
o.cursorlineopt = "both"

opt.scrolloff = 8
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true
opt.backspace = "2"
opt.showcmd = false
opt.autowrite = true
opt.cursorline = true
opt.hlsearch = true
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append "@-@"
opt.updatetime = 50
opt.colorcolumn = "120"
