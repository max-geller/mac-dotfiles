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
config.color_scheme = "catppuccin-frappe"
config.window_background_image = "/Users/maxgeller/Pictures/WezTerm/big-sur.jpg"
-- config.window_background_image_opacity = 0.3
-- config.macos_window_background_blur = 07
config.font = wezterm.font("JetBrains Mono", {
    weight = "Bold"
})
-- Add this line to darken the background image
config.window_background_image_hsb = {
    brightness = 0.5,
    hue = 1.0,
    saturation = 1.0,
  }

config.font_size = 12.5
config.window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 3
}

-- Import workspace configurations
local angular_workspace = require("angular_workspace")
local react_workspace = require("react_workspace")
local python_workspace = require("python_workspace")
local go_workspace = require("go_workspace")
local nvim_workspace = require("nvim_workspace")

-- Keyboard Shortcuts
config.keys = {
  -- Split vertically
  {
    key = 'h',
    mods = 'CTRL|SHIFT|OPT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Split horizontally
  {
    key = 'v',
    mods = 'CTRL|SHIFT|OPT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Close pane
  {
    key = 'x',
    mods = 'CTRL|SHIFT|OPT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  -- Enter pane selection mode
  {
    key = 's',
    mods = 'CTRL|SHIFT|OPT',
    action = wezterm.action.PaneSelect,
  },
}

-- Event handler for gui-startup
wezterm.on("gui-startup", function(cmd)
    local args = cmd.args
    if #args > 0 then
        if args[1] == "angular" then
            wezterm.log_info("Starting Angular Workspace")
            local window, pane, _ = wezterm.mux.spawn_window {
                workspace = angular_workspace.workspace.name
            }
            angular_workspace.create(window, pane)
        elseif args[1] == "react" then
            wezterm.log_info("Starting React Workspace")
            local window, pane, _ = wezterm.mux.spawn_window {
                workspace = react_workspace.workspace.name
            }
            react_workspace.create(window, pane)
        elseif args[1] == "python" then
            wezterm.log_info("Starting Python Workspace")
            local window, pane, _ = wezterm.mux.spawn_window {
                workspace = python_workspace.workspace.name
            }
            python_workspace.create(window, pane)
        elseif args[1] == "go" then
            wezterm.log_info("Starting Go Workspace")
            local window, pane, _ = wezterm.mux.spawn_window {
                workspace = go_workspace.workspace.name
            }
            go_workspace.create(window, pane)
        elseif args[1] == "nvim" then
            wezterm.log_info("Starting NeoVim Cofig Workspace")
            local window, pane, _ = wezterm.mux.spawn_window {
                workspace = nvim_workspace.workspace.name
            }
            nvim_workspace.create(window, pane)
        end
    end
end)

return config