-- Этот файл должен иметь ту же структуру, что и nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

-- Настройки пользовательского интерфейса
M.ui = {
  theme = "kanagawa", -- Тема оформления
  transparency = false, -- Прозрачность

  statusline = {
    theme = "minimal", -- Тема статусной строки
  },

  hl_override = {
    Comment = { italic = true }, -- Изменение стиля комментариев
    ["@comment"] = { italic = true }, -- Изменение стиля особых комментариев
  },

  nvdash = {
    load_on_startup = true, -- Загрузка при запуске
  },
}

return M
