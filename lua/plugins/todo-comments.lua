return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Зависимости для todo-comments.nvim
  lazy = false, -- Не ленивая загрузка
  config = function()
    require("todo-comments").setup() -- Установка настроек для todo-comments.nvim
  end,
}
