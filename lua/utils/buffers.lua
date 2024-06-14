local M = {} -- Объявление модуля

local utils = require "utils.init" -- Загрузка вспомогательного модуля

-- Функция для закрытия одного буфера
function M.close(bufnr, force)
  if not bufnr or bufnr == 0 then
    bufnr = vim.api.nvim_get_current_buf() -- Получаем текущий буфер, если bufnr не указан или равен 0
  end

  -- Проверяем доступность модуля mini.bufremove и валидность буфера
  if utils.is_available "mini.bufremove" and M.is_valid(bufnr) and #vim.t.bufs > 1 then
    if not force and vim.api.nvim_get_option_value("modified", { buf = bufnr }) then
      local bufname = vim.fn.expand "%" -- Получаем имя текущего буфера
      local empty = bufname == ""
      if empty then
        bufname = "Untitled"
      end

      -- Запрашиваем подтверждение сохранения изменений в буфере
      local confirm = vim.fn.confirm(('Save changes to "%s"?'):format(bufname), "&Yes\n&No\n&Cancel", 1, "Question")
      if confirm == 1 then
        if empty then
          return -- Не сохранять изменения, если имя буфера пустое
        end
        vim.cmd.write() -- Сохраняем изменения в буфере
      elseif confirm == 2 then
        force = true -- Принудительно закрыть буфер без сохранения
      else
        return -- Отмена операции закрытия буфера
      end
    end

    require("mini.bufremove").delete(bufnr, force) -- Используем mini.bufremove для удаления буфера
  else
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = bufnr }) -- Получаем тип буфера
    -- Закрываем буфер с помощью bdelete или confirm bdelete
    vim.cmd(("silent! %s %d"):format((force or buftype == "terminal") and "bdelete!" or "confirm bdelete", bufnr))
  end
end

-- Функция для закрытия всех буферов, кроме текущего
function M.close_all(keep_current, force)
  if keep_current == nil then
    keep_current = false -- По умолчанию не сохранять текущий буфер
  end

  local current = vim.api.nvim_get_current_buf() -- Получаем текущий буфер
  for _, bufnr in ipairs(vim.t.bufs) do
    if not keep_current or bufnr ~= current then
      M.close(bufnr, force) -- Закрываем буфер, если он не текущий
    end
  end
end

return M -- Возвращаем модуль
