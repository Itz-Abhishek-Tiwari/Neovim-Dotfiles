return {

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
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
    }
  }
}
