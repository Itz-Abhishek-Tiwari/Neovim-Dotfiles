-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",
  transparency = true,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs", "btns" },
  },

  telescope = { style = "bordered" },

  statusline = {
    theme = "minimal",
    separator_style = "arrow",
  }
}



-- vim.cmd([[
--   augroup FileTypeDjango
--     autocmd!
--     autocmd BufNewFile,BufRead *.html set filetype=htmldjango
--   augroup END
-- ]])
return M
