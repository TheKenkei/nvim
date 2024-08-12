local lspconfig = require "lspconfig"
local util = require "lspconfig.util"
local nvchad_lspconfig = require "nvchad.configs.lspconfig"

local on_attach = nvchad_lspconfig.on_attach
local on_init = nvchad_lspconfig.on_init
local capabilities = nvchad_lspconfig.capabilities

-- Общие настройки для всех серверов
local default_config = {
  on_attach = on_attach, -- Функция, которая будет вызвана при подключении к LSP серверу
  on_init = on_init, -- Функция, которая будет вызвана при инициализации LSP сервера
  capabilities = capabilities, -- Возможности клиента LSP сервера
  commands = {
    OrganizeImports = { -- Команда для организации импортов
      function()
        local params = {
          command = "_typescript.organizeImports", -- Команда для TypeScript сервера
          arguments = { vim.api.nvim_buf_get_name(0) }, -- Аргументы команды
        }
        vim.lsp.buf.execute_command(params) -- Выполнение команды через буфер LSP
      end,
      description = "Organize Imports", -- Описание команды
    },
  },
  settings = {
    gopls = { -- Настройки для gopls (Go Language Server)
      completeUnimported = true, -- Завершение независимых пакетов
      usePlaceholders = true, -- Использование заполнителей (placeholders)
      analyses = {
        unusedparams = true, -- Анализ неиспользуемых параметров
      },
    },
  },
}

-- Настройки LSP-серверов
local servers = {
  "html",
  "cssls",
  "clangd",
  "intelephense",
  "phpactor",
  "emmet_ls",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup(default_config) -- Настройка каждого сервера из списка
end

-- Настройки для TypeScript
lspconfig.tsserver.setup(default_config)

-- Настройки для Tailwind CSS
lspconfig.tailwindcss.setup(require "configs.tailwindcss")

-- Настройки для Angular
local install_path = vim.fn.stdpath "data" .. "/mason/packages/angular-language-server/node_modules"
local ang = install_path .. "/@angular/language-server/node_modules"
local angular_cmd = { "ngserver", "--stdio", "--tsProbeLocations", install_path, "--ngProbeLocations", ang }

lspconfig.angularls.setup {
  on_attach = on_attach, -- Функция для подключения к Angular Language Server
  cmd = angular_cmd, -- Команда для запуска Angular Language Server
  root_dir = util.root_pattern "package.json", -- Корневая директория проекта
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = angular_cmd -- Обновление конфигурации команды при изменении
  end,
}
-- lspconfig.eslint.setup {
--   on_new_config = function(new_config, new_root_dir)
--     new_config.filetypes = { "javascript","typescript", "html" }
--   end,
--   on_attach = function(client, bufnr)
--     vim.api.nvim_create_autocmd("BufWritePre", {
--       buffer = bufnr,
--       command = "EslintFixAll",
--     })
--   end,
-- }
