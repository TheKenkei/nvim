local options = {
  filters = {
    dotfiles = true, -- Исключить точные файлы (начинающиеся с точки)
    custom = { ".conform*" }, -- Пользовательские фильтры файлов (например, файлы, начинающиеся с ".conform")
    exclude = { vim.fn.stdpath "config" .. "/lua/custom", "conform.lua" }, -- Исключить указанные файлы или директории
  },
  -- disable_netrw = true, -- Отключить стандартный файловый менеджер Netrw
  -- hijack_netrw = true, -- Перехватывать команды Netrw для работы с другими менеджерами файлов
  -- hijack_cursor = true, -- Перехватывать курсорные команды для управления файлами
  -- hijack_unnamed_buffer_when_opening = false, -- Не перехватывать неименованный буфер при открытии
  sync_root_with_cwd = true, -- Синхронизировать корневую директорию с текущей рабочей директорией
  update_focused_file = {
    enable = true, -- Включить автоматическое обновление фокусированного файла
    -- update_root = false, -- Не обновлять корневую директорию
  },
  view = {
    adaptive_size = true, -- Адаптивный размер окна
    side = "left", -- Сторона окна (слева)
    -- width = 40, -- Ширина окна
    -- preserve_window_proportions = true, -- Сохранять пропорции окна
    number = true, -- Показывать номера строк
    relativenumber = true, -- Показывать относительные номера строк
  },
  -- git = {
  --   enable = true, -- Включить интеграцию с Git
  --   ignore = true, -- Не игнорировать файлы Git
  -- },
  -- filesystem_watchers = {
  --   enable = true, -- Включить отслеживание файловой системы
  -- },
  -- actions = {
  --   open_file = {
  --     resize_window = true, -- Изменять размер окна при открытии файла
  --   },
  -- },
  renderer = {
    -- root_folder_label = false, -- Не отображать метку корневой директории
    -- highlight_git = true, -- Выделять Git файлы
    highlight_opened_files = "all", -- Не выделять открытые файлы

    -- indent_markers = {
    --   enable = true, -- Включить отображение маркеров отступов
    -- },
  },
}

return options
