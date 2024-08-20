return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "typescript",
              "css",
              "scss",
              "html",
              "json",
              "yaml",
              "markdown",
              "graphql",
              "md",
              "txt",
            },
          }),
        },
      })
    end,
  }