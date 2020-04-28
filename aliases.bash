source ~/.dotfiles/aliases/univeral

alias clc='echo -e "\e[3J";echo "\n";clear;'

if ! [[ -n $SSH_CONNECTION ]]; then
    source ~/.dotfiles/aliases/local
fi
