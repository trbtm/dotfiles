# Starshop config
export STARSHIP_CONFIG=~/.dotfiles/starship.toml
export SPACESHIP_DIR_TRUNC=1

# Color folders, executables, etc.
export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;

# Load starship
(autoload -Uz compinit && compinit) 2> /dev/null
eval "$(starship init zsh)" 2> /dev/null

# Use nano for crontab, etc.
export VISUAL='nano'

# Common shortcuts
alias clc='echo -e "\e[3J";echo "\n";clear;'
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -al .'

# Resolve warnings when login in to other servers with ssh
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Define aliases for Uberspace on macOS
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
    alias airprint-n-play-pi="ssh pi@airprint-n-play-pi.local"
    alias uberspace-gbm7="ssh gbm7@wirtanen.uberspace.de"
    alias uberspace-keuk="ssh keuk@suhail.uberspace.de"
    alias uberspace-marq="ssh marq@alkaid.uberspace.de"
    alias uberspace-chimme="ssh chimme@pavo.uberspace.de"
    alias uberspace-vss="ssh vss@tuttle.uberspace.de"
fi

# ROS related sourcing on Ubuntu
source /opt/ros/melodic/setup.zsh 2> /dev/null
source ~/robotics/a4/devel/setup.zsh 2> /dev/null
