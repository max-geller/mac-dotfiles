return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = "frappe",
      transparent_background = true,
      integrations = {
        nvimtree = true,
      },
    })
  end,
}
