alias clc='echo -e "\e[3J";echo "\n";clear;'

# Common shortcuts
alias ..='cd ..'
alias ...='cd ../..'

# Enable colors in ls on mac and linux
if [ "$(uname)" = "Darwin" ]; then
    alias ls='ls -G'
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
    alias ls='ls --color=auto'
fi

alias ll='ls -alh'
