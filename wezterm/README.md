# WezTerm Configuration

A minimal WezTerm setup with project management and tmux-style keybindings.

## Features

### Appearance

- Color scheme: Tokyo Night
- Font: JetBrainsMono Nerd Font (16pt) with CJK fallback
- Window opacity at 80% with background blur
- Tab bar positioned at bottom
- Minimal window decorations (resize only)
- Dimmed inactive panes for focus clarity

### Tab Management

The configuration uses a leader key (Ctrl+b) followed by additional keys:

- `Ctrl+b c` - Create new tab
- `Ctrl+b x` - Close current tab
- `Ctrl+b p` - Previous tab
- `Ctrl+b n` - Next tab
- `Ctrl+b ,` - Rename current tab
- `Ctrl+b 1-9` - Jump to tab by number

Tab titles automatically display the current working directory name.

### Project Navigation (similar to Tmux)

- `Ctrl+b s` - Open project selector (scans ~/Code directory)
- `Ctrl+b f` - Switch between existing workspaces

When selecting a project, WezTerm creates or switches to a workspace with that project's directory as the working directory.

## Files

- `wezterm.lua` - Main configuration file
- `projects.lua` - Project picker implementation
