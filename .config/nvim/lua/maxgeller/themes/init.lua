local M = {}

-- List all your themes here
local themes = {
  catppuccin = "catppuccin",
  tokyonight = "tokyonight",
  -- Add more themes as needed
}

-- Set your default theme here
local default_theme = "catppuccin"

function M.setup()
  vim.cmd("colorscheme " .. default_theme)
  print("Theme set to " .. default_theme)
end

-- Function to change theme
function M.change_theme(theme_name)
  if themes[theme_name] then
    vim.cmd("colorscheme " .. theme_name)
    print("Theme changed to " .. theme_name)
  else
    print("Theme not found: " .. theme_name)
  end
end

return M