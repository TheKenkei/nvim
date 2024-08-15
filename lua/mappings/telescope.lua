local map = vim.api.nvim_set_keymap


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find buffer" })
vim.keymap.set('n', '<leader>fg', "<cmd>:Telescope git_files<CR>", { desc = "Git files" })
