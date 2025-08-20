require "nvchad.autocmds"

vim.api.nvim_create_autocmd("BufDelete", {

    callback = function()
        local bufs = vim.t.bufs
        if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
            vim.cmd "Nvdash"
        end
    end,
})
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})
-- vim.api.nvim_create_autocmd({ "FocusLost", "FocusGained" }, {
--     command = "checktime",
-- })
