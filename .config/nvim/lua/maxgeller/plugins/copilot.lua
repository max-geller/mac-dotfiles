return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = 'InsertEnter',
  config = true,
  build = ":Copilot auth",
  opts = {
    suggestion = { enabled = true },
    panel = { enabled = true },
    filetypes = {
      markdown = true,
      help = true,
    },
   },
}
