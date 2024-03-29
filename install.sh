#!/usr/bin/env bash

source $(dirname $0)/install_functions.sh

THE_HOME="${HOME/\/c\//c:/}"

#
# bash
#

configure_bash()
{
  rm -f $THE_HOME/.bash_aliases
  ln -s $THE_HOME/.dotfiles/shell/aliases.sh $THE_HOME/.bash_aliases

  rm -f $THE_HOME/.bashrc
  ln -s $THE_HOME/.dotfiles/shell/.bashrc $THE_HOME/.bashrc
}

user_yes_no "Do you want to configure the bash shell?" configure_bash

#
# zsh
#

configure_zsh()
{
  rm -f $THE_HOME/.zshrc
  ln -s $THE_HOME/.dotfiles/shell/.zshrc $THE_HOME/.zshrc
  rm -rf $THE_HOME/.dotfiles/ohmyzsh

  git clone https://github.com/ohmyzsh/ohmyzsh.git $THE_HOME/.dotfiles/ohmyzsh 
  git clone https://github.com/zsh-users/zsh-autosuggestions $THE_HOME/.dotfiles/ohmyzsh/plugins/zsh-autosuggestions
}

user_yes_no "Do you want to configure the zsh shell?" configure_zsh

#
# Starship
#

install_starship()
{
  if ! command -v curl &> /dev/null; then
    echo "Please install curl on your system."
    echo "e.g. via 'sudo apt install curl'"
    exit 1
  fi
  curl -fsSL https://starship.rs/install.sh | sudo sh -s -- -y
}

user_yes_no "Do you want to install starship prompt?" install_starship

configure_starship()
{
  rm -f $THE_HOME/.config/starship.toml
  mkdir -p $THE_HOME/.config
  ln -s $THE_HOME/.dotfiles/shell/starship.toml $THE_HOME/.config/starship.toml
}

user_yes_no "Do you want to configure starship prompt?" configure_starship

#
# $THE_HOME/.gitconfig
#

GIT_CONFIG=false
link_gitconfig()
{
  rm -f $THE_HOME/.gitconfig
  ln -s $THE_HOME/.dotfiles/git/.gitconfig $THE_HOME/.gitconfig
  echo "Linked gitconfig."
  GIT_CONFIG=true
}

user_yes_no "Do you wish to link ~/.gitconfig?" link_gitconfig

#
# $THE_HOME/.gitignore
#

link_gitignore()
{
  rm -f $THE_HOME/.gitignore
  ln -s $THE_HOME/.dotfiles/git/.gitignore $THE_HOME/.gitignore
  if [ "$GIT_CONFIG" = true ]; then
    rm -f $THE_HOME/.gitconfig
    ln -s $THE_HOME/.dotfiles/git/.gitconfig_gitignore $THE_HOME/.gitconfig
  else
    git config --global core.excludesFile '$THE_HOME/.gitignore'
  fi
  echo "Linked gitignore."
}

user_yes_no "Do you wish to link ~/.gitignore?" link_gitignore

#
# Vim
#

link_vi()
{
  rm -f $THE_HOME/.vimrc
  ln -s $THE_HOME/.dotfiles/.vimrc $THE_HOME/.vimrc
  echo "Linked vimrc."
}

user_yes_no "Do you wish to link ~/.vimrc?" link_vi
