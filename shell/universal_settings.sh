# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='nano'
export VISUAL='nano'

# pyenv
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
