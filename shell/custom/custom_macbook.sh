#
# nvm
#

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

#
# pyenv
#

eval "$(pyenv init --path)"

#
# Exercism
#

export PATH=$HOME/Exercism/bin:$PATH

#
# rust
#

export PATH=$HOME/.cargo/bin:$PATH

#
# Go
#

export GOPATH=$HOME/.go

#
# misc
#

alias fleetlabui_git_daemon='git daemon --base-path=$(realpath ~)/Fleetlab --export-all --enable=receive-pack --reuseaddr --informative-errors --verbose --port=1000'
