local wezterm = require("wezterm")

local nvim_workspace = {
    name = "nvim",
    cwd = "/Users/maxgeller/.config/nvim",
    panes = {{
        command = {"nvim"}
    }, {
        command = {"tmux", "new-session", "-A", "-s", "nvim_terminal"}
    }}
}

local function create_nvim_workspace(window, pane)
    pane:send_text("cd " .. nvim_workspace.cwd .. "\n")
    pane:send_text(table.concat(nvim_workspace.panes[1].command, " ") .. "\n")

    local second_pane = pane:split{
        direction = "Bottom",
        size = 0.15
    }
    second_pane:send_text("cd " .. nvim_workspace.cwd .. "\n")
    second_pane:send_text(table.concat(nvim_workspace.panes[2].command, " ") .. "\n")
end

return {
    workspace = nvim_workspace,
    create = create_nvim_workspace
}
