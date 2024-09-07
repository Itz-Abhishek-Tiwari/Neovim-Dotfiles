return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "sqls",
        "tailwindcss-language-server",
        "typescript-language-server",
        "eslint-lsp",
        "pyright",
        -- "mypy",
        "debugpy",
        "ruff-lsp",
        "black",
        "pylint",
        "bash-language-server",

      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "htmldjango",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "html" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "theRealCarneiro/hyprland-vim-syntax",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = "hypr",
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "configs.null-ls"
    end,
  },
{
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
},
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup {
        font = "Maple Mono SC NF=15;Noto Color Emoji=15",
        theme = "Coldark-Dark",
        background = "#579e79",
        -- output = "~/Pictures/Screenshots/",
        window_title = function()
          return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
        end,
      }
    end,
  },
  {
    "tweekmonster/django-plus.vim",
    ft = { "htmldjango", "python" },
    config = function()
      -- Plugin specific configuration
    end,
    cond = function()
      return vim.fn.filereadable(vim.fn.getcwd() .. "/manage.py") == 1
    end,
  },
  -- lua/configs/lazy.lua
  -- other plugins
  -- {
  -- 	"tweekmonster/django-plus.vim",
  -- 	config = function()
  -- 		-- Django specific configurations
  -- 	end,
  -- },
  -- PeekOpen Plugin
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>op",
        function()
          local peek = require("peek")
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "Peek (Markdown Preview)",
      },
    },
    opts = { theme = "dark" },
  },
  -- {
  --   "toppair/peek.nvim",
  --   event = { "VeryLazy" },
  --   build = "deno task --quiet build:fast",
  --   config = function()
  --     require("peek").setup()
  --     vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
  --     vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
  --   end,
  -- },

  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",                         -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      -- your config goes here
      -- or just leave it empty :)
      enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
      execution_message = {
        enabled = true,
        message = function() -- message to print on save
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,                                    -- dim the color of `message`
        cleaning_interval = 1250,                      -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
      },
      trigger_events = {                               -- See :h events
        immediate_save = { "BufLeave", "FocusLost" },  -- vim events that trigger an immediate save
        defer_save = { "InsertLeave", "TextChanged" }, -- vim events that trigger a deferred save (saves after `debounce_delay`)
        cancel_defered_save = { "InsertEnter" },       -- vim events that cancel a pending deferred save
      },
      condition = nil,
      write_all_buffers = false, -- write all buffers when the current one meets `condition`
      noautocmd = false,         -- do not execute autocmds when saving
      lockmarks = false,         -- lock marks when saving, see `:h lockmarks` for more details
      debounce_delay = 1000,     -- delay after which a pending save is executed
      -- log debug messages to 'auto-save.log' file in neovim cache directory, set to `true` to enable
      debug = false,
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup()
    end,
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" },
    },
  },
  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, '<leader>nq', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
}
