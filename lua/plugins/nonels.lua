return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "gbprod/none-ls-shellcheck.nvim", -- shellcheck
    "nvimtools/none-ls-extras.nvim", -- eslint_d
  },
  lazy = false,
  autostart = true,
  config = function()
    local null_ls = require "null-ls"
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.shfmt,
        require "none-ls-shellcheck.diagnostics",
        require "none-ls-shellcheck.code_actions",
        require "none-ls.diagnostics.eslint",
        require "none-ls.code_actions.eslint",
        null_ls.builtins.diagnostics.stylelint, -- CSS
        null_ls.builtins.diagnostics.phpstan,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.tidy.with {
          filetypes = { "xml" },
        },
        null_ls.builtins.diagnostics.tidy.with {
          filetypes = { "xml" },
        },
      },
    }
  end,
}
