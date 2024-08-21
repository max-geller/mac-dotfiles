local wezterm = require("wezterm")

local go_workspace = {
    name = "go",
    cwd = "/Users/maxgeller/code/Go",
    panes = {{
        command = {"nvim"}
    }, {
        command = {"tmux", "new-session", "-A", "-s", "go_terminal"}
    }}
}

local function create_go_workspace(window, pane)
    pane:send_text("cd " .. go_workspace.cwd .. "\n")
    pane:send_text(table.concat(go_workspace.panes[1].command, " ") .. "\n")

    local second_pane = pane:split{
        direction = "Bottom",
        size = 0.15
    }
    second_pane:send_text("cd " .. go_workspace.cwd .. "\n")
    second_pane:send_text(table.concat(go_workspace.panes[2].command, " ") .. "\n")
end

return {
    workspace = go_workspace,
    create = create_go_workspace
}