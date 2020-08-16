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
  bash <( curl -fsSL https://starship.rs/install.sh )
  rm -rf ~/.config/starship.toml
  ln -s ~/.dotfiles/shell/starship.toml ~/.config/starship.toml
}

user_yes_no "Do you want to install and configure starship prompt?" configure_starship

#
# ~/.gitconfig
#
link_gitconfig()
{
  rm -rf ~/.gitconfig
  ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
  echo "Linked gitconfig."
}

user_yes_no "Do you wish to link ~/.gitconfig?" link_gitconfig

#
# ~/.gitignore
#
link_gitignore()
{
  rm -rf ~/.gitignore
  ln -s ~/.dotfiles/git/.gitignore ~/.gitignore
  echo "Linked gitignore."
}

user_yes_no "Do you wish to link ~/.gitignore?" link_gitignore

#
# ~/.ssh/config
#
link_ssh_config()
{
  rm -rf ~/.ssh/config
  ln -s ~/.dotfiles/ssh_config ~/.ssh/config
  echo "Linked ~/.ssh/config."
}

user_yes_no "Do you wish to link ~/.ssh/config?" link_ssh_config
