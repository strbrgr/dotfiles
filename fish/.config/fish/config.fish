# Source alias'
source ~/.config/fish/alias.fish

# Disable new user greeting.
set fish_greeting

# Source cargo
source "$HOME/.cargo/env.fish"

# rust analyzer
set -Ux PATH $HOME/.local/bin $PATH

## Flamgraph autocompletions 
#flamegraph --completions fish >~/.config/fish/completions

# Source node
fish_add_path /opt/homebrew/opt/node@22/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/blitz/.lmstudio/bin

# pnpm
set -gx PNPM_HOME "/Users/blitz/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
chruby ruby-3.4.1
