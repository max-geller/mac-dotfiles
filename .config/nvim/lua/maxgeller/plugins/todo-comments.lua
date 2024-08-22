return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    highlight = {
      before = "fg",
      keyword = "wide",
      after = "fg",
    },
    keywords = {
      TODO = { icon = " ", color = "info" },
       },
    colors = {
      info = { "Normal", "#0db9d7" },
    },
  },
  config = function()
    local todo_comments = require("todo-comments")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })

    todo_comments.setup()
  end,
}


-- Examples:
-- TODO: Add more plugins
-- FIX: Fix Something
