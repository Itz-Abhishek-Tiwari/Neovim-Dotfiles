--@type ChadrcConfig
local M = {}


M.base46 = {
  theme = "bearded-arc",
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

  telescope = {
    style = "borderless",
    layout_strategy = "vertical"
  },

  statusline = {
    theme = "minimal",
    separator_style = "arrow",
  }
}

M.mason = {
  pkgs = {
    "emmet-language-server",
    -- 'emmet-ls',
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "prettier",
    "sqls",
    "tailwindcss-language-server",
    "typescript-language-server",
    -- "typescript",
    "eslint-lsp",
    -- "pyright",
    "vue-language-server",
    "mypy",
    "flake8",
    "debugpy",
    "ruff-lsp",
    "black",
    "pylint",
    "bash-language-server",
    "jinja-lsp",
    "emmet-language-server",
    "json-lsp",
    "pyright",
    -- "pyright"
    "marksman",
    "djlint",
  }
}

-- vim.cmd([[
--   augroup FileTypeDjango
--     autocmd!
--     autocmd BufNewFile,BufRead *.html set filetype=htmldjango
--   augroup END
-- ]])
return M
