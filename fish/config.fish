set -gx EDITOR nvim

# Set the path to binaries
set -gx PATH /opt/homebrew/bin $PATH

# Disable new user greeting.
set fish_greeting

# Source cargo
source "$HOME/.cargo/env.fish"

# rust analyzer
set -Ux PATH $HOME/.local/bin $PATH

# Source node
fish_add_path /opt/homebrew/opt/node@22/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/blitz/.lmstudio/bin

# pnpm
set -gx PNPM_HOME /Users/blitz/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Alias'
alias n="nvim ."
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias gc-="git checkout -"
alias gcb="git checkout -b"
