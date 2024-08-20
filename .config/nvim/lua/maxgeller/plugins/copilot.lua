return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = 'InsertEnter',
    config = true,
    build = ":Copilot auth",
    opts = {
      suggestion = { 
        enabled = true, 
        auto_trigger = true, 
        keymap = {
          accept = "<Tab>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
      }, },
      panel = { enabled = true },
      filetypes = {
        markdown = true,
        help = true,
        lua = true,
        typescript = true,
        javascript = true,
        javascriptreact = true,
        typescriptreact = true,
        go = true,
        python = true,
        gitcommit = true,
        gitrebase = true,
        yaml = true,
        toml = true,
        json = true,
        css = true,
        scss = true,

      },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
