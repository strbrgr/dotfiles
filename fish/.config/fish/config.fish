# Source alias'
source ~/.config/fish/alias.fish

# Disable new user greeting.
set fish_greeting

# Source cargo
source "$HOME/.cargo/env.fish"

## Flamgraph autocompletions 
#flamegraph --completions fish >~/.config/fish/completions

# Source node
fish_add_path /opt/homebrew/opt/node@22/bin
