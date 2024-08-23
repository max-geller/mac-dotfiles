require("maxgeller.core")
require("maxgeller.lazy")
require("maxgeller.themes").setup()


-- Command to change themes:

vim.api.nvim_create_user_command("ChangeTheme", function(opts)
    require("maxgeller.themes").change_theme(opts.args)
end, {
    nargs = 1,
    complete = function()
        return {"catppuccin", "tokyonight"}
    end
})

-- Automatically Start NeoVim with nvim-tree Opened
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        require("nvim-tree.api").tree.open()
    end
})
