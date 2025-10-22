# Source alias'
source ~/.config/fish/alias.fish

# Git alias shortcuts (Fish aliases)
alias ga='git add'
alias gcm='git checkout main'
alias gc-='git checkout -'
alias gaa='git add --all'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
alias gld='git log --pretty=format:"%C(yellow)%h\\ %C(green)%ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short --graph'
alias gls='git log --pretty=format:"%C(green)%h\\ %C(yellow)[%ad]%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative'
alias gst='git status --short --branch'

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
set -gx PNPM_HOME /Users/blitz/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
chruby ruby-3.4.1
