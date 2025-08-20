-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "catppuccin",
    transparency = false,

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
    },
}
M.term = {
    sizes = {
        sp = 1,
        vsp = 1,
    },
}
M.ui = {

    statusline = {
        theme = "minimal", -- default/vscode/vscode_colored/minimal
        -- default/round/block/arrow separators work only for default statusline theme
        -- round and block will work for minimal theme only
        separator_style = "round",
        order = nil,
        -- modules = nil,
    },

    telescope = { style = "bordered" }, -- borderless / bordered

    cmp = {
        icons_left = true, -- only for non-atom styles!
        style = "default", -- default/flat_light/flat_dark/atom/atom_colored
        abbr_maxwidth = 60,
        format_colors = {
            tailwind = true, -- will work for css lsp too
            icon = "󱓻",
        },
    },

    -- lazyload it when there are 1+ buffers
    tabufline = {
        enabled = true,
        lazyload = false,
        order = { "buffers", "tabs", "btns" },
        modules = nil,
        bufwidth = 20,
    },
}

M.nvdash = {
    load_on_startup = true,

    header = {
        "                            ",
        " ██   ██ ███████ ███    ██ ██   ██ ███████ ██ ",
        " ██  ██  ██      ████   ██ ██  ██  ██      ██ ",
        " █████   █████   ██ ██  ██ █████   █████   ██ ",
        " ██  ██  ██      ██  ██ ██ ██  ██  ██      ██ ",
        " ██   ██ ███████ ██   ████ ██   ██ ███████ ██ ",
        "                            ",
        "     Powered By  eovim    ",
        "                            ",
    },
    buttons = {
        { txt = "  Git diff files", keys = " jj", cmd = "Telescope git_status " },
        { txt = "  LazyGit", keys = "g", cmd = "LazyGit" },
        { txt = "  Find File", keys = "f", cmd = "Telescope find_files" },
        { txt = "󰈭  Find Word", keys = "w", cmd = "Telescope live_grep" },
        { txt = "󰏔  Mason", keys = "m", cmd = "Mason" },
        { txt = "󰏗  Lazy", keys = "l", cmd = "Lazy" },

        { txt = "󱥚  Themes", keys = "t", cmd = ":lua require('nvchad.themes').open()" },
        { txt = "  Keymaps", keys = "k", cmd = "NvCheatsheet" },

        { txt = "󰈆  Quit", keys = "q", cmd = "q" },

        { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
        {

            txt = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime) .. " ms"
                return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
            end,
            hl = "NvDashFooter",
            no_gap = true,
        },

        { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    },
}

return M
