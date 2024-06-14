local M = {} -- Объявление модуля

-- Функция для проверки доступности плагина
function M.is_available(plugin)
  local lazy_config_avail, lazy_config = pcall(require, "lazy.core.config")
  -- Проверяем доступность модуля lazy.core.config и наличие плагина в спецификации
  return lazy_config_avail and lazy_config.spec.plugins[plugin] ~= nil
end

-- Функция для получения иконки по типу
function M.get_icon(kind, padding, no_fallback)
  local icon = require("utils.icons")[kind] -- Получаем иконку из таблицы utils.icons
  return icon and icon .. string.rep(" ", padding or 0) or "" -- Возвращаем иконку с указанным отступом или пустую строку
end

return M -- Возвращаем модуль
