set -gx EDITOR nvim
set -gx VISUAL $EDITOR

# Disable the new-user greeting.
set -g fish_greeting

# Load Cargo's Fish integration when Rust is installed.
if test -f "$HOME/.cargo/env.fish"
    source "$HOME/.cargo/env.fish"
end

# Keep PATH changes local to this config instead of writing Fish universal
# variables on every shell startup. fish_add_path also deduplicates entries
# and ignores directories that are not present on this machine.
fish_add_path --global --prepend \
    /opt/homebrew/bin \
    /opt/homebrew/opt/node@22/bin \
    "$HOME/.cargo/bin" \
    "$HOME/.local/bin" \
    "$HOME/.opencode/bin" \
    "$HOME/.lmstudio/bin"

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm"
fish_add_path --global --prepend "$PNPM_HOME"

# Aliases
alias n="nvim ."
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias gc-="git checkout -"
alias gcb="git checkout -b"
alias gcm="git checkout main"
alias cnr="cargo run"
alias cnext="cargo nextest run"

# Go installation
if command -q go
    set -gx GOROOT (go env GOROOT)
    set -gx GOPATH (go env GOPATH)
else
    set -gx GOROOT /usr/local/go
    set -gx GOPATH "$HOME/go"
end

fish_add_path --global --prepend "$GOROOT/bin" "$GOPATH/bin"
