alias clc='echo -e "\e[3J";echo "\n";clear;'

# Common shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ll='ls -alh'
alias nano='nano -l'


if ! [[ -n $SSH_CONNECTION ]]; then
    alias airprint-n-play-pi="ssh pi@airprint-n-play-pi.local"
    alias ad-vserver="ssh thore@62.171.167.26"
    alias ad-vserver-bash="ssh -t thore@62.171.167.26"
    alias uberspace-gbm7="ssh -t gbm7@wirtanen.uberspace.de"
    alias uberspace-keuk="ssh keuk@suhail.uberspace.de"
    alias uberspace-marq="ssh marq@alkaid.uberspace.de"
    alias uberspace-chimme="ssh chimme@pavo.uberspace.de"
    alias uberspace-vss="ssh vss@tuttle.uberspace.de"
fi
