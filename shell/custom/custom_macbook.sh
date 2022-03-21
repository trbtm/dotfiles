 # python
alias python3.10="/opt/homebrew/Cellar/python@3.10/3.10.1/bin/python3"
alias python3.9="/opt/homebrew/Cellar/python@3.9/3.9.10/bin/python3"

# brew
alias x86_brew="/usr/local/bin/brew"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Exercism
export PATH=$HOME/Exercism/bin:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
