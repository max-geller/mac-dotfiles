local wezterm = require("wezterm")

local python_workspace = {
    name = "python",
    cwd = "/Users/maxgeller/code/Python",
    panes = {{
        command = {"nvim"}
    }, {
        command = {"tmux", "new-session", "-A", "-s", "python_terminal"}
    }}
}

local function create_python_workspace(window, pane)
    pane:send_text("cd " .. python_workspace.cwd .. "\n")
    pane:send_text(table.concat(python_workspace.panes[1].command, " ") .. "\n")

    local second_pane = pane:split{
        direction = "Bottom",
        size = 0.15
    }
    second_pane:send_text("cd " .. python_workspace.cwd .. "\n")
    second_pane:send_text(table.concat(python_workspace.panes[2].command, " ") .. "\n")
end

return {
    workspace = python_workspace,
    create = create_python_workspace
}