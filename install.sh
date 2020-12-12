#!/usr/bin/env bash

user_yes_no()
{
    while true; do
        read -p "$1 (y/n) " yn
        case $yn in
        [Yy]* ) 
            $2;
            break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
        esac
    done
}

#
# bash
#

configure_bash()
{
  rm -f ~/.bash_aliases
  ln -s ~/.dotfiles/shell/aliases.sh ~/.bash_aliases

  rm -f ~/.bashrc
  ln -s ~/.dotfiles/shell/.bashrc ~/.bashrc
}

user_yes_no "Do you want to configure the bash shell?" configure_bash

#
# zsh
#

configure_zsh()
{
  rm -f ~/.zshrc
  ln -s ~/.dotfiles/shell/.zshrc ~/.zshrc
  rm -rf ~/.dotfiles/ohmyzsh

  cd ~/.dotfiles
  git --git-dir=$HOME/.dotfiles/.git submodule init
  git --git-dir=$HOME/.dotfiles/.git submodule update
  git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.dotfiles/ohmyzsh/plugins/zsh-autosuggestions
}

user_yes_no "Do you want to configure the zsh shell?" configure_zsh

#
# Starship
#

configure_starship()
{
  if ! command -v curl &> /dev/null; then
    echo "Please install curl on your system."
    echo "e.g. via 'sudo apt install curl'"
    exit 1
  fi
  bash <( curl -fsSL https://starship.rs/install.sh )
  rm -f ~/.config/starship.toml
  mkdir -p ~/.config
  ln -s ~/.dotfiles/shell/starship.toml ~/.config/starship.toml
}

user_yes_no "Do you want to install and configure starship prompt?" configure_starship

#
# ~/.gitconfig
#
GIT_CONFIG=false
link_gitconfig()
{
  rm -f ~/.gitconfig
  ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
  echo "Linked gitconfig."
  GIT_CONFIG=true
}

user_yes_no "Do you wish to link ~/.gitconfig?" link_gitconfig

#
# ~/.gitignore
#
link_gitignore()
{
  rm -f ~/.gitignore
  ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
  if [ "$GIT_CONFIG" = true ]; then
    rm -f ~/.gitconfig
    ln -s ~/.dotfiles/git/.gitconfig_gitignore ~/.gitconfig
  else
    git config --global core.excludesFile '~/.gitignore'
  fi
  echo "Linked gitignore."
}

user_yes_no "Do you wish to link ~/.gitignore?" link_gitignore

#
# Visual Studio Code
#
link_vscode_settings()
{
  rm -f ~/.config/Code/User/settings.json
  mkdir -p ~/.config/Code/User
  ln -s ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
  echo "Linked Visual Studio Code Settings."
}

user_yes_no "Do you wish to link ~/.config/Code/User/settings.json?" link_vscode_settings
