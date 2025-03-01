return {
    "nvim-tree/nvim-tree.lua",
    opts = {
        on_attach = function(bufnr)
            local api = require "nvim-tree.api"
            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end
            -- default mappings
            api.config.mappings.default_on_attach(bufnr)
            -- custom mappings
            vim.keymap.set("n", "?", api.tree.toggle_help, opts "Help")
            vim.keymap.set("n", "l", api.node.open.edit, opts "Open")
            vim.keymap.set("n", "h", api.node.navigate.parent_close, opts "Close directory")
            vim.keymap.set("n", "<C-K>", "<cmd>:TmuxNavigateUp<cr>", opts "Close directory")
            vim.keymap.set("n", "<Enter>", api.node.open.no_window_picker, opts "Open no picker")
        end,
        renderer = {
            root_folder_label = ":t",
            full_name = false,
            highlight_opened_files = "name", -- Не выделять открытые файлы
        },
        diagnostics = {
            enable = true,
        },
        git = {
            enable = true,
            ignore = true,
            timeout = 500,
        },
        view = {
            adaptive_size = true,
            relativenumber = true,
            number = true,
        },
    },
}
