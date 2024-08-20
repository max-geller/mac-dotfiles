local wezterm = require("wezterm")

-- Configuration Options
local config = wezterm.config_builder()

config.default_cwd = "/Users/maxgeller/code"
config.initial_rows = 50
config.initial_cols = 175
config.automatically_reload_config = true
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingBar"
config.color_scheme = "Nord (Gogh)"
config.window_background_opacity = 0.9
config.macos_window_background_blur = 07
config.font = wezterm.font("JetBrains Mono", {weight = "Bold"})
config.font_size = 12.5
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 3,
}
config.default_prog = { 'zsh', '-c', '/opt/homebrew/bin/neofetch; exec zsh' }

-- Angular workspace definition
local angular_workspace = {
  name = "angular",
  cwd = "/Users/maxgeller/code/Angular",
  panes = {
    { command = { "nvim" } },
    { command = { "zsh", "-c", "clear; zsh" } },  -- Clear terminal before starting zsh
  }
}

-- Function to create Angular workspace
local function create_angular_workspace(window, pane)
  for i, pane_config in ipairs(angular_workspace.panes) do
    if i > 1 then
      pane = pane:split{ direction = "Bottom", size = 0.3 }
    end
    
    -- Set the correct working directory for each pane
    pane:send_text("cd " .. angular_workspace.cwd .. "\n")
    
    if pane_config.command then
      pane:send_text(table.concat(pane_config.command, " ") .. "\n")
    end
  end
end

-- Event handler for gui-startup
wezterm.on("gui-startup", function(cmd)
  local args = cmd.args
  if #args > 0 and args[1] == "angular" then
    local window, pane, _ = wezterm.mux.spawn_window{}
    create_angular_workspace(window, pane)
  end
  -- If no special args, default behavior is maintained
end)

return config