-- Подключаем модуль с настройками NvChad (фреймворк для конфигурации Neovim)
require "nvchad.options"

-- Отключаем создание swap-файлов (файлов подкачки) для текущего буфера
vim.cmd [[ set noswapfile ]]

-- Создаем локальные переменные для удобства работы с настройками
local opt = vim.opt -- opt используется для установки опций, связанных с буферами и окнами
local o = vim.o -- o используется для установки глобальных опций

o.clipboard = "unnamedplus" -- Настройка буфера обмена для использования системного буфера обмена (clipboard)
o.relativenumber = true -- Включаем относительную нумерацию строк (номера строк относительно текущей позиции курсора)
o.cursorlineopt = "both" -- to enable cursorline! Настраиваем отображение курсора: "both" включает подсветку строки и номера строки
opt.scrolloff = 8 -- Устанавливаем количество строк, которые остаются видимыми при прокрутке вверх/вниз
opt.tabstop = 4 -- Устанавливаем ширину табуляции в 4 пробела
opt.shiftwidth = 4 -- Устанавливаем ширину отступа при использовании команд сдвига (например, >> или <<)
opt.shiftround = true -- Округляет отступы до ближайшего значения, кратного shiftwidth
opt.expandtab = true -- Преобразует табы в пробелы (включает использование пробелов вместо табуляции)
opt.backspace = "2" -- Настраиваем поведение backspace: позволяет удалять отступы, концы строк и т.д.
opt.showcmd = false -- Показывать частичную команду в правом нижнем углу экрана
opt.autowrite = true -- Автоматически сохранять файл перед выполнением определенных команд (например, :make)
opt.cursorline = true -- Включаем подсветку строки, на которой находится курсор

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append "@-@"
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
