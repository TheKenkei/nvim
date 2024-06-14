-- Этот файл должен иметь ту же структуру, что и nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- Настройки пользовательского интерфейса
M.ui = {
  theme = "tokyodark", -- Тема оформления
  transparency = false, -- Прозрачность

  statusline = {
    theme = "vscode_colored", -- Тема статусной строки
  },

  hl_override = {
    Comment = { italic = true }, -- Изменение стиля комментариев
    ["@comment"] = { italic = true }, -- Изменение стиля особых комментариев
  },

  nvdash = {
    load_on_startup = false, -- Загрузка при запуске
    header = {
      -- ASCII-арт для заголовка
      "'    ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ",
      "'    ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ",
      "'   ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ",
      "'   ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ",
      "'  ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ",
      "'  ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ",
      "' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ",
      "' ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ",
      "' ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ",
      "' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ",
      "'  ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ",
      "'   ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ",
      "'     ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ",
      "'        ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁     ⢀⣠⣴ ",
      "' ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ",
    },
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" }, -- Кнопка поиска файлов
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" }, -- Кнопка недавних файлов
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" }, -- Кнопка поиска слов
      { "  Bookmarks", "Spc m a", "Telescope marks" }, -- Кнопка закладок
      { "  Themes", "Spc t h", "Telescope themes" }, -- Кнопка тем
      { "  Mappings", "Spc c h", "NvCheatsheet" }, -- Кнопка соответствий
    },
  },

  term = {
    -- Настройки терминала
    -- hl = "Normal:term,WinSeparator:WinSeparator",
    sizes = { sp = 0.3, vsp = 0.2 }, -- Размеры терминала
    float = {
      relative = "editor", -- Относительное положение
      row = 0, -- Строка
      col = 0.02, -- Колонка
      width = 0.98, -- Ширина
      height = 0.825, -- Высота
      border = "single", -- Оформление границы
    },
    vertical = {
      relative = "editor", -- Относительное положение
      row = 199, -- Строка
      col = 123, -- Колонка
      size = "50%", -- Размер
      border = "single", -- Оформление границы
    },
  },
}

return M
