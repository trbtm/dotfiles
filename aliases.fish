source ~/.dotfiles/aliases/univeral

alias clc='clear'

if not test -n "$SSH_CONNECTION"
    source ~/.dotfiles/aliases/local
end
