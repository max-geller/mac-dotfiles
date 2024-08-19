local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
  default_cwd = "/code",
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "Nord (Gogh)",
  window_background_opacity = 0.88,
  macos_window_background_blur = 07,
  font = wezterm.font("JetBrains Mono", {weight = "Bold"}),
  font_size = 12.5,
  window_padding = {
    left = 5,
    right = 5,
    top = 3,
    bottom = 3,
  },
  default_prog = { 'zsh', '-c', '/opt/homebrew/bin/neofetch; exec zsh' }
}

return config;
