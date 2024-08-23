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
                :hi NvimTreeNormal guibg=NONE
                :hi NvimTreeEndOfBuffer guibg=NONE
                :hi NvimTreeFolderName guifg=#e5c890
                :hi NvimTreeOpenedFolderName guifg=#e5c890 gui=bold
                :hi NvimTreeEmptyFolderName guifg=#e5c890
                :hi NvimTreeFileIcon guifg=#9ece6a
                :hi NvimTreeGitNew guifg=#9ece6a
                :hi NvimTreeGitDirty guifg=#e0af68
                :hi NvimTreeGitStaged guifg=#73daca

                :hi NvimTreeExecFile guifg=#e5c890
                :hi NvimTreeSpecialFile guifg=#e5c890
                :hi NvimTreeSymlink guifg=#e5c890 gui=underline
                :hi NvimTreeIndentMarker guifg=#4b5263
                :hi NvimTreeRootFolder guifg=#e5c890 gui=bold
                :hi NvimTreeImageFile guifg=#e5c890
                :hi NvimTreeMarkdownFile guifg=#e5c890
                :hi NvimTreeLicenseFile guifg=#e5c890
                :hi NvimTreeLuaFile guifg=#e5c890

            ]])
        end

        update_nvim_tree_colors()

        vim.api.nvim_create_autocmd("ColorScheme", {
            pattern = "*",
            callback = update_nvim_tree_colors
        })

    end

}
