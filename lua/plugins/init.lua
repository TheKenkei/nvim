return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- Событие перед записью буфера
    config = function()
      require "configs.conform" -- Загрузка конфигурации для плагина
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvimtree", -- Опции для nvim-tree
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults() -- Установка настроек по умолчанию
      require "configs.lspconfig" -- Дополнительная конфигурация lspconfig
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = require "configs.mason", -- Опции для mason.nvim
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.nvim-treesitter", -- Опции для treesitter
  },
  {
    "Exafunction/codeium.vim",
    lazy = false, -- Не ленивая загрузка
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false, -- Не ленивая загрузка
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    }, -- Команды для vim-tmux-navigator
  },
  {
    "stevearc/dressing.nvim",
    lazy = false, -- Не ленивая загрузка
    opts = {}, -- Пустые опции
  },
  { "nvim-neotest/nvim-nio" }, -- Просто загрузка без дополнительных настроек
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy", -- Очень ленивая загрузка
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy", -- Очень ленивая загрузка
    config = function()
      require("nvim-ts-autotag").setup() -- Установка автотегирования
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter", -- Событие при входе в режим вставки
    config = function()
      require("better_escape").setup() -- Установка настроек для better-escape
    end,
  },
  {
    "nvim-neotest/neotest",
    event = "VeryLazy", -- Очень ленивая загрузка
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            jestCommand = "npm test --",
            jestConfigFile = "jest.config.ts",
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    }, -- Зависимости для neotest
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local ok, dap = pcall(require, "dap")
      if not ok then
        return
      end
      dap.configurations.typescript = {
        {
          type = "node2",
          name = "node attach",
          request = "attach",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
        },
      }
      dap.adapters.node2 = {
        type = "executable",
        command = "node-debug2-adapter",
        args = {},
      }
    end,
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
    }, -- Зависимости для nvim-dap
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup() -- Установка dapui
      local dap, dapui = require "dap", require "dapui"

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open {} -- Открытие dapui после инициализации
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close {} -- Закрытие dapui перед завершением
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close {} -- Закрытие dapui перед выходом
      end
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
    }, -- Зависимости для nvim-dap-ui
  },
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup {
        library = { plugins = { "nvim-dap-ui" }, types = true },
      } -- Установка neodev
    end,
  },
  { "tpope/vim-fugitive" }, -- Просто загрузка без дополнительных настроек
  {
    "rbong/vim-flog",
    dependencies = {
      "tpope/vim-fugitive",
    },
    lazy = false, -- Не ленивая загрузка
  },
  {
    "sindrets/diffview.nvim",
    lazy = false, -- Не ленивая загрузка
  },
  {
    "ggandor/leap.nvim",
    lazy = false, -- Не ленивая загрузка
    config = function()
      require("leap").add_default_mappings(true) -- Добавление стандартных отображений для leap.nvim
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    lazy = false, -- Не ленивая загрузка
  },
  {
    "folke/trouble.nvim",
    lazy = false, -- Не ленивая загрузка
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Зависимости для trouble.nvim
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Зависимости для todo-comments.nvim
    lazy = false, -- Не ленивая загрузка
    config = function()
      require("todo-comments").setup() -- Установка настроек для todo-comments.nvim
    end,
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy", -- Очень ленивая загрузка
    dependencies = {
      "smoka7/hydra.nvim",
    },
    opts = {}, -- Пустые опции
    cmd = { -- Команды для multicursors.nvim
      "MCstart",
      "MCvisual",
      "MCclear",
      "MCpattern",
      "MCvisualPattern",
      "MCunderCursor",
    },
    keys = { -- Клавиши для multicursors.nvim
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
}
