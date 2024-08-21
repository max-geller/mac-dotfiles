local wezterm = require("wezterm")

local react_workspace = {
    name = "react",
    cwd = "/Users/maxgeller/code/React",
    panes = {{
        command = {"nvim"}
    }, {
        command = {"tmux", "new-session", "-A", "-s", "react_terminal"}
    }}
}

local function create_react_workspace(window, pane)
    pane:send_text("cd " .. react_workspace.cwd .. "\n")
    pane:send_text(table.concat(react_workspace.panes[1].command, " ") .. "\n")

    local second_pane = pane:split{
        direction = "Bottom",
        size = 0.15
    }
    second_pane:send_text("cd " .. react_workspace.cwd .. "\n")
    second_pane:send_text(table.concat(react_workspace.panes[2].command, " ") .. "\n")
end

return {
    workspace = react_workspace,
    create = create_react_workspace
}