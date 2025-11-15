#!/bin/bash

# Directory containing your dotfiles repo
DOTFILES_DIR="$HOME/Code/dotfiles"

# Function to create a symlink
link_file() {
  local source="$DOTFILES_DIR/$1"
  local dest="$2"

  # Create parent directory if needed
  mkdir -p "$(dirname "$dest")"

  # Backup existing file if it exists and isn't a symlink
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing $dest to $dest.backup"
    mv "$dest" "$dest.backup"
  fi

  # Create symlink
  ln -sf "$source" "$dest"
  echo "Linked $dest -> $source"
}

# Create all symlinks
link_file "fish/config.fish" "$HOME/.config/fish/config.fish"
link_file "git/.gitconfig" "$HOME/.gitconfig"
link_file "nvim" "$HOME/.config/nvim"
link_file "wezterm" "$HOME/.config/wezterm"

echo "Done!"
