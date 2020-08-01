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
rm -f ~/.bash_aliases
ln -s ~/.dotfiles/bash/aliases.bash ~/.bash_aliases

configure_bash()
{
  bash <( curl -fsSL https://starship.rs/install.sh )
  
  rm -rf ~/.config/starship.toml
  ln -s ~/.dotfiles/bash/starship.toml ~/.config/starship.toml

  rm -f ~/.bashrc
  ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
}

user_yes_no "Do you want to configure the bash shell?" configure_bash

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
