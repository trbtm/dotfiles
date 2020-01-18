export STARSHIP_CONFIG=~/.dotfiles/starship.toml
export SPACESHIP_DIR_TRUNC=1

autoload -Uz compinit && compinit
eval "$(starship init zsh)"

export VISUAL='nano'

alias clc='echo -e "\e[3J";echo "\n";clear;'
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al .'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    alias airprint-n-play-pi="ssh pi@airprint-n-play-pi.local"
    alias uberspace-gbm7="ssh gbm7@wirtanen.uberspace.de"
    alias uberspace-keuk="ssh keuk@suhail.uberspace.de"
    alias uberspace-marq="ssh marq@alkaid.uberspace.de"
    alias uberspace-chimme="ssh chimme@pavo.uberspace.de"
    alias uberspace-vss="ssh vss@tuttle.uberspace.de"
fi

# ROS related sourcing
source /opt/ros/melodic/setup.zsh 2> /dev/null
source ~/robotics/a4/devel/setup.zsh 2> /dev/null
