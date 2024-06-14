local options = {
  ensure_installed = {
    -- Frontend
    "angular-language-server", -- Angular Language Server
    "typescript-language-server", -- TypeScript Language Server
    "tailwindcss-language-server", -- Tailwind CSS Language Server
    "css-lsp", -- CSS Language Server
    "html-lsp", -- HTML Language Server
    "eslint_d", -- ESLint
    "prettierd", -- Prettier

    -- Backend
    "phpactor", -- PHP Actor (PHP Language Server)
    "intelephense", -- Intelephense (PHP Language Server)
    "easy-coding-standard", -- Easy Coding Standard (PHP Formatter)
    "xmlformatter", -- XML Formatter

    -- Docker
    "docker-compose-language-service", -- Docker Compose Language Service
    "dockerfile-language-server", -- Dockerfile Language Server

    -- Neovim
    "lua-language-server", -- Lua Language Server
    "stylua", -- Stylua (Lua Formatter)

    -- Other
    "shfmt", -- Shell Formatter
  },
}

return options
