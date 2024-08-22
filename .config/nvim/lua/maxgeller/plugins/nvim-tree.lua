return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true
            },
            renderer = {
                indent_markers = {
                    enable = true
                },
                icons = {
                    glyphs = {
                        folder = {
                            -- arrow_closed = "", -- arrow when folder is closed
                            -- arrow_open = "", -- arrow when folder is open
                        }
                    }
                },
                highlight_git = true,
                root_folder_label = false,
                add_trailing = false,
            },
            actions = {
                open_file = {
                    window_picker = {
                        enable = false
                    }
                }
            },
            filters = {
                custom = {".DS_Store"}
            },
            git = {
                ignore = false
            },
            highlight = {
                enable = true,
                custom = {
                    directory = {
                        fg = "#fffff"
                    },
                    ["git_ignored"] = {
                        fg = "#545c7e"
                    }
                }
            }
        })

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", {
            desc = "Toggle file explorer"
        }) -- toggle file explorer
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", {
            desc = "Toggle file explorer on current file"
        }) -- toggle file explorer on current file
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", {
            desc = "Collapse file explorer"
        }) -- collapse file explorer
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", {
            desc = "Refresh file explorer"
        }) -- refresh file explorer

        local function update_nvim_tree_colors()
            vim.cmd([[
                highlight NvimTreeNormal guibg=NONE
                highlight NvimTreeEndOfBuffer guibg=NONE
                highlight NvimTreeFolderName guifg=#e5c890
                highlight NvimTreeOpenedFolderName guifg=#e5c890 gui=bold
                highlight NvimTreeEmptyFolderName guifg=#e5c890
                highlight NvimTreeFileIcon guifg=#9ece6a
                highlight NvimTreeGitNew guifg=#9ece6a
                highlight NvimTreeGitDirty guifg=#e0af68
                highlight NvimTreeGitStaged guifg=#73daca
            ]])
        end

        update_nvim_tree_colors()

        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "*",
            callback = update_nvim_tree_colors
        })

    end

}