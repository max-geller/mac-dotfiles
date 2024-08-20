require("maxgeller.core")
require("maxgeller.lazy")

-- Automatically Start NeoVim with nvim-tree Opened
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      require("nvim-tree.api").tree.open()
    end
  })