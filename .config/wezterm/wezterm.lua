local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
  default_cwd = "/Users/maxgeller/code",  -- Set Default Working Directory
  initial_rows = 50, -- Set Default Window Height
  initial_cols = 175, -- Set Default Window Width
  automatically_reload_config = true,
  enable_tab_bar = false,  -- Remove Tab Functionality by Default
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",  -- Eliminates Standard Mac Window Management
  default_cursor_style = "BlinkingBar",
  color_scheme = "Nord (Gogh)",
  window_background_opacity = 0.9,  -- Set Window Opacity
  macos_window_background_blur = 07, -- Set Window Background Blur
  font = wezterm.font("JetBrains Mono", {weight = "Bold"}),
  font_size = 12.5,
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 3,
  },
  default_prog = { 'zsh', '-c', '/opt/homebrew/bin/neofetch; exec zsh' }  -- Automatically Run NeoFetch When Opening New Window
}

return config;
