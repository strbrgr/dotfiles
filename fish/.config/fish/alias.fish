# ~/.config/fish/alias.fish

# Alias for `..` to go up one directory
function ..
    cd ..
end

# Alias for `n` to open Neovim in the current directory
function n
    nvim .
end

function c
    clear
end

function tks
    clear
    tmux kill-server
end
