# Jochen's dotfiles

**Warning**: Don't blindly use my settings unless you know what that entails. Use at your own risk!

## Installation

To set up these dotfiles on your system, use the included `sync.sh` script:

```bash
./sync.sh
```

This script will:
- Create symlinks from this repository to the appropriate locations in your home directory
- Automatically back up any existing config files (with `.backup` extension)
- Link configurations for Fish, Git, Neovim, and WezTerm

**Note**: Make sure to review the script before running it to ensure it matches your system setup.

## Contents

### Fish Shell

A modern, user-friendly shell with smart autocompletions and clean syntax.

**Configuration highlights:**

- Minimal setup with disabled greeting
- Configured for Rust, Node.js, pnpm, and LM Studio development
- Handy aliases: `n` (nvim .), `c` (clear), `..` (cd ..)

### WezTerm

A GPU-accelerated terminal emulator written in Rust.

**Configuration highlights:**

- Tokyo Night color scheme with 80% opacity and blur effects
- JetBrains Mono Nerd Font at 16pt
- tmux-style keybindings with `Ctrl+b` as leader key
- **Project picker** (`Leader + s`) - quickly switch between projects in ~/Code
- Workspace management for organizing multiple project sessions
- Custom tab titles showing only folder names
- Visual dimming of inactive panes

### Neovim

Powered by LazyVim - a Neovim setup focused on simplicity and extensibility.

**Configuration highlights:**

- LazyVim distribution for sensible defaults
- Language support for: Markdown, Rust, and TypeScript
- Pre-configured LSP, formatting, and linting for these languages
