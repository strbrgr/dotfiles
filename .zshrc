# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autocomplete
 )

alias g="git"
alias gc="git commit -m"
alias ga="git add"
alias gb="git branch"
alias gcb="git checkout -b"
alias gba='git branch -a'
alias gco='git checkout'
alias gd='git diff'
alias gp='git pull'
alias gs="git status"
alias t="tmux"
alias n="nvim ."
alias np="npm run dev"
alias c="clear"
alias ls="lsd"
alias ..="cd .."
alias gcm="git checkout main"
alias cdcp="cd /Users/blitz/Coding-Projects"
alias cddk="cd /Users/blitz/Desktop"
alias python="python3"
alias ya="yabai --restart-service"

eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh

# Rust
. "$HOME/.cargo/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/blitz/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/blitz/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/blitz/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/blitz/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

