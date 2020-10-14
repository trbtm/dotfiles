# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LIBVIRT_DEFAULT_URI="qemu:///system"

# Preferred editor
export EDITOR='nano'
export VISUAL='nano'

# custom aliases, configs, etc.
source ~/.dotfiles/shell/custom/index.sh

# rust
export PATH=$HOME/.cargo/bin:$PATH

# pyenv
if [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
