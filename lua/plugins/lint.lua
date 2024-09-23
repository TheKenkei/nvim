return {
  "mfussenegger/nvim-lint",
  ft = {
    "javascript",
    "html",
    "typescript",
    "javascriptreact",
  },
  opts = {
    linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      html = { "eslint_d" },
      javascriptreact = { "eslint_d" },
    },
  },
  config = function(_, opts)
    local lint = require "lint"

    local current_file = vim.fn.expand "%:p"

    lint.linters.eslint_d = {
      cmd = "eslint_d",
      args = {
        "--format",
        "json",
        "--stdin",
        "--stdin-filename",
        current_file,
        "--quiet",
      },
      stdin = true,
      stream = "stdout",
      ignore_exitcode = true,

      parser = function(output)
        output = output:match "{.*}" or "{}"

        if output == "{}" or output == "" then
          return {}
        end

        local decoded, err = vim.fn.json_decode(output)

        if err then
          vim.notify("err: " .. err, vim.log.levels.INFO)
          return {}
        end

        if type(decoded) ~= "table" or not decoded.messages then
          return {}
        end

        local results = {}
        for _, message in ipairs(decoded.messages) do
          if message.severity == 2 then
            table.insert(results, {
              lnum = message.line,
              col = message.column,
              end_lnum = message.endLine,
              end_col = message.endColumn,
              severity = vim.diagnostic.severity.ERROR,
              source = "eslint_d",
              message = message.message,
            })
          end
        end

        return results
      end,
    }
    lint.linters_by_ft = opts.linters_by_ft

    local lint_group = vim.api.nvim_create_augroup("Lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChanged", "TextChangedI" }, {
      group = lint_group,
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
