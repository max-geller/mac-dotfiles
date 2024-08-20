local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Format on save
augroup("FormatAutogroup", { clear = true })
autocmd("BufWritePre", {
  group = "FormatAutogroup",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})