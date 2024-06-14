-- Устанавливаем путь к кешу base46 для NvChad
vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " " -- Устанавливаем пробел в качестве лидера клавиш

-- Путь к Lazy.nvim и его установка, если не установлен
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath) -- Добавляем путь к runtimepath

-- Загрузка конфигурации для Lazy.nvim
local lazy_config = require "configs.lazy"

-- Настройка плагинов
require("lazy").setup({
  {
    "NvChad/NvChad", -- Основной плагин NvChad
    lazy = false, -- Загрузка плагина сразу
    branch = "v2.5", -- Используемая ветка
    import = "nvchad.plugins", -- Импортируемые плагины NvChad
    config = function()
      require "options" -- Загрузка опций после установки плагинов
    end,
  },
  { import = "plugins" }, -- Импорт пользовательских плагинов
}, lazy_config)

-- Загрузка темы
dofile(vim.g.base46_cache .. "defaults") -- Загрузка стандартных настроек
dofile(vim.g.base46_cache .. "statusline") -- Загрузка статусной строки

-- Загрузка автокоманд для NvChad
require "nvchad.autocmds"

-- Запланированная загрузка пользовательских сопоставлений клавиш
vim.schedule(function()
  require "mappings"
end)
