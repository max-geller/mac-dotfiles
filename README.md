#

```zsh
 ███    ███  █████  ██   ██    ███████ ██ ██      ███████ ███████
 ████  ████ ██   ██  ██ ██     ██      ██ ██      ██      ██
 ██ ████ ██ ███████   ███      █████   ██ ██      █████   ███████
 ██  ██  ██ ██   ██  ██ ██     ██      ██ ██      ██           ██
 ██      ██ ██   ██ ██   ██ ██ ██      ██ ███████ ███████ ███████
```

## Tooling

- zsh (Shell)
- WezTerm (Emulator / Pane Management)
- YADM (Dotfile Management)
- Homebrew (Package Manager)
- NeoVim (Text Editor / IDE)
- Aerospace (Window Manager) (MacOS)

## zsh Plugins

- zsh-autosuggestions (Auto-Complete)
- zsh-syntax-hightlight (Syntax Highlighting)
- Eza (Language Service)
- Zoxide (Directory Navigation)
- tree (Directory Tree)

## WezTerm

- Nord Theme (Color Scheme)
- tmux (Pane Management)
- zsh (Shell)
- starship (Prompt)

## NeoVim Plugins

- alpha (Dashboard)
- auto-session
- autopairs
- bufferline
- comment (Commenting)
- dressing (Syntax Highlighting)
- fzf (Parrot)
- lazygit (Git Interface)
- lazyvim (Package Manager)
- indent-blankline
- nvim-cmp
- nvim-tree
- prettier (Code Formatter)
- telescope (Fuzzy Finder)
- todo-comments
- treesitter (Syntax Highlighting)
- vim-maximizer (Maximize Pane)

- CoPilot (AI Code Completion)
- Parrot (AI Chat)

## Common Packages

- yazi (File Directory)
- gotop (System Monitor)
- LazyGit (Git Interface)
- neofetch (System Information)
- Spotifyd (Spotify Daemon)
- LazyDocker (Docker Interface)
- cmatrix (Matrix Screensaver)
- figlet (ASCII Art)

# TODO

- [ ] Configure Theme Accross WezTerm, NeoVim, Starship (Catppuccin)
- [ ] Setup WezTerm workspace for performance monitoring
- [ ] Fix WezTerm New Window & Workspace Issue (Does not open if existing window is open)
- [ ] Confirm Prettier Options
- [ ] Configure LSP for NeoVim
- [x] Confirm starship styling
- [ ] Fix nvim Tab Display Issue
- [ ] Master Shortcuts:
  - [ ] Aerospace
  - [x] WezTerm
  - [ ] tmux
  - [ ] NeoVim
  - [ ] Copilot
  - [ ] nvim-tree
  - [ ] Telescope
  - [ ] Parrot
  - [ ] LazyGit

## Keyboard Shortcut Approach

| Function                 | Service      | Approach         |
| ------------------------ | ------------ | ---------------- |
| MacOS Window Management  | Aerospace    | `alt'            |
| zsh                      | zsh          | `ctrl'           |
| Launch WezTerm Workspace | WezTerm      | `ctrl+opt+cmd' + |
| NeoVim Navigate Panes    | tmux         | `ctrl' +         |
| NeoVim Split Windows     | tmux         | 'space s' +      |
| NeoVim Sessions          | auto-session | `space w' +      |
| NeoVim Fuzzy Finder      | Telescope    | `space f' +      |
| NeoVim File Tree         | nvim-tree    | `space e' +      |
| NeoVim Git Interface     | LazyGit      | `space g' +      |
| NeoVim AI Chat           | CoPilot      | `space c' +      |
| NeoVim Formatter         | Prettier     | `space' + f      |
| NeoVim Commenting        | Comment      | `space' + c      |

## Common NeoVim Keyboard Shortcuts

| Function                     | Service   | Shortcut   |
| ---------------------------- | --------- | ---------- |
| Insert Mode                  | NeoVim    | 'i'        |
| Normal Mode                  | NeoVim    | 'jk'       |
| Toggle between NVIM panes    | Aerospace | 'alt'      |
| Toggle File Explorer Display | nvim-tree | 'space ee' |
| Create New File              | nvim-tree | 'a'        |
| Rename File                  | nvim-tree | 'r'        |
| Delete File                  | nvim-tree | 'd'        |
| Toggle Fuzzy Finder          | Telescope | 'space ff' |
| Split Window Vertically      | tmux      | 'space sv' |
| Split Window Horizontally    | tmux      | ''         |
| Close Current Pane           | tmux      | 'space sx  |
| Move to Pane Left            | tmux      | 'ctrl + h' |
| Move to Pane Right           | tmux      | 'ctrl + l' |
| Toggle Maximize Pane         | tmux      | 'space sm' |
| Create New Tab               | tmux      | 'space to' |
| Close Current Tab            | tmux      | 'space tx' |
| Go to Next Tab               | tmux      | 'space tn' |
| Go to Previous Tab           | tmux      | 'space tp' |
| Format Code                  | prettier  | 'space f'  |
| Search Next ToDo Item        | todo      | 'space ]n' |
| Search Previous ToDo Item    | todo      | 'space [n' |
