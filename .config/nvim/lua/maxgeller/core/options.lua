vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- Prettier Default
opt.shiftwidth = 2 -- 2 Spaces for Indent Width
opt.expandtab = true -- Expand Tab to Spaces
opt.autoindent = true -- Copy Indent from Current Line

-- Search Settings
opt.ignorecase = true -- Ignore Case When Searching
opt.smartcase = true -- Assumes Case-Sensitive Search When Seaching Mixed Case

opt.cursorline = true

-- Turn On TermGUIColors for TokyoNight ColorScheme to Work
-- (Requires iTerm2 or Any True Color Terminal
opt.termguicolors = true
opt.background = "dark" -- Colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- Show Sign Column so that text doesn't shift

-- Backspace Behavior
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line, or insert mode start position

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split Windows
opt.splitright = true -- Split Vertical Window to Right
opt.splitbelow = true -- Split Horizontal Window to the Bottom

-- Test Comment 


