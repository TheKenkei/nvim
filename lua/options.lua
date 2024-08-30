require "nvchad.options"

vim.cmd [[ set noswapfile ]]

local opt = vim.opt
local o = vim.o
o.clipboard = "unnamedplus"
o.relativenumber = true
o.cursorlineopt = "both" -- to enable cursorline!

opt.scrolloff = 20
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.expandtab = true

opt.backspace = "2"
opt.showcmd = true
opt.autowrite = true
opt.cursorline = true
