local options = {
  filters = {
    dotfiles = true, -- Исключить точные файлы (начинающиеся с точки)
    custom = { ".conform*" }, -- Пользовательские фильтры файлов (например, файлы, начинающиеся с ".conform")
    exclude = { vim.fn.stdpath "config" .. "/lua/custom", "conform.lua" }, -- Исключить указанные файлы или директории
  },
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true, -- Включить автоматическое обновление фокусированного файла
  },
  view = {
    adaptive_size = true, -- Адаптивный размер окна
    side = "left", -- Сторона окна (слева)
    number = true, -- Показывать номера строк
    relativenumber = true, -- Показывать относительные номера строк
  },
  renderer = {
    full_name = true,
    root_folder_label = ":~:s?$?",
    highlight_opened_files = "name", -- Не выделять открытые файлы
  },
}

return options
