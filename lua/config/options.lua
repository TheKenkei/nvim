-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local o = vim.o

o.clipboard = "unnamedplus"
o.cursorlineopt = "both"
o.relativenumber = true
opt.autoindent = true
opt.autowrite = true
opt.backspace = "2"
opt.backspace = { "start", "eol", "indent" }
opt.backup = false
opt.backupskip = { "/tmp/*", "/private/tmp/*" }
opt.breakindent = true
opt.cmdheight = 1
opt.colorcolumn = "120"
opt.cursorline = true
opt.encoding = "utf-8"
opt.expandtab = true
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.inccommand = "split"
opt.incsearch = true
opt.isfname:append("@-@")
opt.laststatus = 3
opt.mouse = ""
opt.path:append({ "**" }) -- Finding files - Search down into subfolders
opt.scrolloff = 10
opt.shell = "zsh"
opt.shiftround = true
opt.shiftwidth = 4
opt.showcmd = false
opt.signcolumn = "yes"
opt.smartindent = true
opt.smarttab = true
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "cursor"
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4
opt.termguicolors = true
opt.title = true
opt.updatetime = 50
opt.wildignore:append({ "*/node_modules/*" })
opt.wrap = false -- No Wrap lines

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Add asterisks in block comments
opt.formatoptions:append({ "r" })

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]])
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]])

if vim.fn.has("nvim-0.8") == 1 then
  vim.opt.cmdheight = 0
end
