autoload -Uz compinit && compinit
eval "$(starship init zsh)"

export VISUAL='nano'

alias clc='echo -e "\e[3J";echo "\n";clear;'
alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls -GwF'
alias ll='ls -alh'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias airprint-n-play-pi="ssh pi@airprint-n-play-pi.local"

alias uberspace-gbm7="ssh gbm7@wirtanen.uberspace.de"
alias uberspace-gbm="ssh gbm@menkent.uberspace.de"

alias uberspace-keuk="ssh keuk@suhail.uberspace.de"
alias uberspace-keuk-mysql="ssh -L 3306:127.0.0.1:3306 keuk@suhail.uberspace.de"
alias uberspace-marq="ssh marq@alkaid.uberspace.de"
alias uberspace-marq-mysql="ssh -L 3306:127.0.0.1:3306 marq@alkaid.uberspace.de"
alias uberspace-chimme="ssh chimme@pavo.uberspace.de"
alias uberspace-chimme-mysql="ssh -L 3306:127.0.0.1:3306 chimme@pavo.uberspace.de"


alias uberspace-vss="ssh vss@tuttle.uberspace.de"
alias uberspace-vss-mysql="ssh -L 3306:127.0.0.1:3306 vss@tuttle.uberspace.de"
