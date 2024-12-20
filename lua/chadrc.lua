-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "kanagawa",
  transparency = true,
  theme_toggle = { "kanagawa", "kanagawa" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}
M.nvdash = {
  load_on_startup = true,

  header = {
    "                            ",
    "██   ██ ███████ ███    ██ ██   ██ ███████ ██ ",
    "██  ██  ██      ████   ██ ██  ██  ██      ██ ",
    "█████   █████   ██ ██  ██ █████   █████   ██ ",
    "██  ██  ██      ██  ██ ██ ██  ██  ██      ██ ",
    "██   ██ ███████ ██   ████ ██   ██ ███████ ██ ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
  },
  buttons = {
    { txt = "  Git diff files", keys = "g", cmd = "Telescope git_status " },
    { txt = "  Find File", keys = "f", cmd = "Telescope find_files" },
    { txt = "󰈭  Find Word", keys = "w", cmd = "Telescope live_grep" },

    { txt = "󰏔  Mason", keys = "m", cmd = "Mason" },
    { txt = "󰏗  Lazy", keys = "l", cmd = "Lazy" },

    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

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

M.ui = {

  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "block",
    order = nil,
    -- modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = false,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
}

return M
