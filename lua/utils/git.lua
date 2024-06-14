local git = { url = "https://github.com/" } -- Определение таблицы git с базовым URL

-- Функция для поиска файлов в рабочем дереве Git
function git.file_worktree(file, worktrees)
  worktrees = worktrees or vim.g.git_worktrees -- Использование переданных рабочих деревьев или глобальной переменной
  if not worktrees then
    return -- Если нет рабочих деревьев, завершаем функцию
  end

  file = file or vim.fn.expand "%" -- Получаем текущий файл, если не передан другой
  for _, worktree in ipairs(worktrees) do
    -- Проверяем наличие файла в указанном рабочем дереве Git
    if
      require("astronvim.utils").cmd({
        "git",
        "--work-tree",
        worktree.toplevel,
        "--git-dir",
        worktree.gitdir,
        "ls-files",
        "--error-unmatch",
        file,
      }, false)
    then
      return worktree -- Возвращаем информацию о найденном рабочем дереве
    end
  end
end

return git -- Возвращаем модуль git
