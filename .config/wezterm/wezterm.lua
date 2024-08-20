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
    { command = { "zsh", "-c", "clear; zsh" } },  -- This will use the default Starship config
    { command = { "/Users/maxgeller/.config/scripts/claude_pane.sh" } },  -- This uses the custom script
  }
}

-- Function to create Angular workspace
local function create_angular_workspace(window, pane)
  -- Create the first pane (Neovim)
  pane:send_text("cd " .. angular_workspace.cwd .. "\n")
  pane:send_text(table.concat(angular_workspace.panes[1].command, " ") .. "\n")

  -- Create the second pane (terminal with default Starship) below the first
  local second_pane = pane:split{ direction = "Bottom", size = 0.2 }
  second_pane:send_text("cd " .. angular_workspace.cwd .. "\n")
  second_pane:send_text(table.concat(angular_workspace.panes[2].command, " ") .. "\n")

  -- Create the third pane (terminal with custom script) to the right, full height
  local third_pane = pane:split{ direction = "Right", size = 0.2 }
  third_pane:send_text("cd " .. angular_workspace.cwd .. "\n")
  third_pane:send_text(table.concat(angular_workspace.panes[3].command, " ") .. "\n")
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