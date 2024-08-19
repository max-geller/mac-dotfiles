vim.g.mapleader = " "

local keymap = vim.keymap -- For Conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert Mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- Increment/Decrement Numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" }) -- Increment

keymap.set("n", "<leader>-", "C-x", { desc = "Decrement Number" }) -- Decrement

-- Split Window Management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Window Vertically" }) -- Split Window Vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Window Horizontally" }) -- Split Window Horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits Equal Size" }) -- Make Split Windows Equal Size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" }) -- Close Current Split Window

-- Tab Management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" }) -- Open New Tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Current Tab" }) -- Close Current Tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go To Next Tab" }) -- Go To Next Tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go To Previous Tab" }) -- Go To Previous Tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open Current Buffer In New Tab" }) -- Open Current Buffer In New Tab




