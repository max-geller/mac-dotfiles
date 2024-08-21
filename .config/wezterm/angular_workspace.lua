local wezterm = require("wezterm")

local angular_workspace = {
    name = "angular",
    cwd = "/Users/maxgeller/code/Angular",
    panes = {{
        command = {"nvim"}
    }, {
        command = {"tmux", "new-session", "-A", "-s", "angular_terminal"}
    }}
}

local function create_angular_workspace(window, pane)
    pane:send_text("cd " .. angular_workspace.cwd .. "\n")
    pane:send_text(table.concat(angular_workspace.panes[1].command, " ") .. "\n")

    local second_pane = pane:split{
        direction = "Bottom",
        size = 0.15
    }
    second_pane:send_text("cd " .. angular_workspace.cwd .. "\n")
    second_pane:send_text(table.concat(angular_workspace.panes[2].command, " ") .. "\n")
end

return {
    workspace = angular_workspace,
    create = create_angular_workspace
}