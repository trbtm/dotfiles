# brew
alias x86_brew="/usr/local/bin/brew"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

create_pyenv()
{
    if [ ! -d ~/.pyenv/versions/$1 ]; then
        pyenv install $1
    fi
    if [ ! -d ~/.pyenv/versions/$2-$1 ]; then
        pyenv virtualenv $1 $2-$1
    fi
    rm -rf .direnv
    ln -s ~/.pyenv/versions/$2-$1 .direnv
    pyenv local $2-$1

    ~/.pyenv/versions/$2-$1/bin/python -m pip install --upgrade pip
    ~/.pyenv/versions/$2-$1/bin/python -m pip install wheels
    ~/.pyenv/versions/$2-$1/bin/python -m pip install pip-tools
}

# Exercism
export PATH=$HOME/Exercism/bin:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# SSH connections
alias ad-vserver="ssh thore@62.171.167.26"
alias uberspace-shared="ssh shared@eukelade.uberspace.de"
alias uberspace-gbm7="ssh gbm7@wirtanen.uberspace.de"
alias uberspace-keuk="ssh keuk@suhail.uberspace.de"
alias uberspace-marq="ssh marq@alkaid.uberspace.de"
alias uberspace-chimme="ssh chimme@pavo.uberspace.de"
alias uberspace-vss="ssh vss@tuttle.uberspace.de"
