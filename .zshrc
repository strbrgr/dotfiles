# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

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
alias n="nvim"
alias c="clear"
alias ls="lsd"
alias cdcp="cd /Users/blitz/Coding-Projects"
alias cddk="cd /Users/blitz/Desktop"

alias python=/usr/bin/python3

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"

