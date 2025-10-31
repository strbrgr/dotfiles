# ~/.config/fish/alias.fish

function ..
    cd ..
end

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

function t
    tmux
end

function cr
    cargo run
end
