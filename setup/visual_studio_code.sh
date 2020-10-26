wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y code

code --install-extension 2gua.rainbow-brackets
code --install-extension aaron-bond.better-comments
code --install-extension coolbear.systemd-unit-file
code --install-extension eamodio.gitlens
code --install-extension fabiospampinato.vscode-projects-plus
code --install-extension fabiospampinato.vscode-statusbar-debugger
code --install-extension mrmlnc.vscode-duplicate
code --install-extension ms-python.python
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode-remote.remote-wsl
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension oderwat.indent-rainbow
code --install-extension redhat.vscode-yaml
code --install-extension robbowen.synthwave-vscode
code --install-extension rust-lang.rust
code --install-extension ryu1kn.partial-diff
code --install-extension tomoki1207.pdf
code --install-extension vscode-icons-team.vscode-icons
