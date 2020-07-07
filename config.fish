if type -q starship
    starship init fish | source
end

if type -q pyenv
    set -g PYENV_ROOT $HOME/.pyenv
    set -g fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - | source
end

source ~/.dotfiles/aliases.fish
