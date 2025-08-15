require("nvchad.configs.lspconfig").defaults()

local base_on_attach = vim.lsp.config.eslint.on_attach

vim.lsp.config("eslint", {
  on_attach = function(client, bufnr)
    if not base_on_attach then
      return
    end

    base_on_attach(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "LspEslintFixAll",
    })
  end,
})
-- read :h vim.lsp.config for changing options of lsp servers
--
local servers = {
  "html",
  "cssls",
  "angularls",
  "tailwindcss",
  "eslint",
  "emmet_ls",
  "vtsls",
  "css_variables",
  "stylelint_lsp",
  "cspell_ls",
}
vim.lsp.enable(servers)
