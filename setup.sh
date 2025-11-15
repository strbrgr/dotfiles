#!/bin/bash

# Dotfiles Setup Script
# This script clones your dotfiles repository and sets up configuration files

set -e # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
DOTFILES_REPO="${DOTFILES_REPO:-}" # Set via environment variable or prompt
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"

# Functions
print_success() {
  echo -e "${GREEN}✓${NC} $1"
}

print_error() {
  echo -e "${RED}✗${NC} $1"
}

print_info() {
  echo -e "${YELLOW}ℹ${NC} $1"
}

# Check if git is installed
check_git() {
  if ! command -v git &>/dev/null; then
    print_error "Git is not installed. Please install git first."
    exit 1
  fi
  print_success "Git is installed"
}

# Get repository URL if not set
get_repo_url() {
  if [ -z "$DOTFILES_REPO" ]; then
    echo ""
    read -p "Enter your dotfiles repository URL (e.g., https://github.com/username/dotfiles): " DOTFILES_REPO

    if [ -z "$DOTFILES_REPO" ]; then
      print_error "Repository URL is required"
      exit 1
    fi
  fi
  print_info "Repository: $DOTFILES_REPO"
}

# Backup existing config directory
backup_existing_config() {
  if [ -d "$CONFIG_DIR" ]; then
    print_info "Backing up existing ~/.config to $BACKUP_DIR"
    cp -r "$CONFIG_DIR" "$BACKUP_DIR"
    print_success "Backup created at $BACKUP_DIR"
  else
    print_info "No existing ~/.config directory found"
  fi
}

# Clone the dotfiles repository
clone_dotfiles() {
  local temp_dir="/tmp/dotfiles_$(date +%s)"

  print_info "Cloning dotfiles repository..."

  if git clone "$DOTFILES_REPO" "$temp_dir"; then
    print_success "Repository cloned successfully"
    echo "$temp_dir"
  else
    print_error "Failed to clone repository"
    exit 1
  fi
}

# Copy dotfiles to ~/.config
copy_dotfiles() {
  local source_dir="$1"

  print_info "Copying dotfiles to $CONFIG_DIR..."

  # Create ~/.config if it doesn't exist
  mkdir -p "$CONFIG_DIR"

  # List of directories to copy to ~/.config
  local config_dirs=(
    "nvim"
    "wezterm"
    "fish"
    # Add more config directories here as needed
  )

  # Copy each config directory
  for dir in "${config_dirs[@]}"; do
    if [ -d "$source_dir/$dir" ]; then
      print_info "Copying $dir..."
      cp -r "$source_dir/$dir" "$CONFIG_DIR/"
      print_success "$dir copied"
    else
      print_info "Skipping $dir (not found in repository)"
    fi
  done

  print_success "Dotfiles copied to $CONFIG_DIR"
}

# Main setup process
main() {
  echo "=================================="
  echo "  Dotfiles Setup Script"
  echo "=================================="
  echo ""

  check_git
  get_repo_url

  echo ""
  read -p "This will backup your existing ~/.config and replace it. Continue? (y/n) " -n 1 -r
  echo ""

  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    print_info "Setup cancelled"
    exit 0
  fi

  backup_existing_config

  temp_dir=$(clone_dotfiles)
  copy_dotfiles "$temp_dir"

  # Cleanup
  rm -rf "$temp_dir"

  echo ""
  print_success "Dotfiles setup complete!"
  echo ""
  print_info "Your old config has been backed up to: $BACKUP_DIR"
  print_info "You may need to restart your shell or applications to see changes"
  echo ""
}

# Run main function
main
