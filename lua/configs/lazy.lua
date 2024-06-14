local config = {}

-- Настройки по умолчанию
config.defaults = { lazy = true }
-- Здесь определяется настройка по умолчанию `lazy`, которая установлена в `true`.

-- Установка цветовой схемы
config.install = { colorscheme = { "nvchad" } }
-- Здесь указывается установка цветовой схемы на `nvchad`.

-- Пользовательский интерфейс
config.ui = {
  icons = {
    ft = "", -- Иконка для типа файла
    lazy = "󰂠 ", -- Иконка для ленивой загрузки плагинов
    loaded = "", -- Иконка для загруженного плагина
    not_loaded = "", -- Иконка для незагруженного плагина
  },
}
-- Здесь определяются различные иконки для пользовательского интерфейса, такие как иконка типа файла, ленивой загрузки плагинов и другие.

-- Оптимизация производительности
config.performance = {
  rtp = {
    disabled_plugins = {
      "2html_plugin",
      "tohtml",
      "getscript",
      "getscriptPlugin",
      "gzip",
      "logipat",
      "netrw",
      "netrwPlugin",
      "netrwSettings",
      "netrwFileHandlers",
      "matchit",
      "tar",
      "tarPlugin",
      "rrhelper",
      "spellfile_plugin",
      "vimball",
      "vimballPlugin",
      "zip",
      "zipPlugin",
      "tutor",
      "rplugin",
      "syntax",
      "synmenu",
      "optwin",
      "compiler",
      "bugreport",
      "ftplugin",
    },
  },
}
-- Здесь перечислены отключенные плагины для оптимизации времени загрузки (`rtp`), что помогает улучшить производительность Neovim.

return config
