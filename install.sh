#!/usr/bin/env bash

# Legacy
rm -f ~/.p10k.zsh
rm -f ~/.zshrc
rm -f ~/.zsh_history
rm -f ~/.zcompdump


git --git-dir ~/.dotfiles/.git submodule init
git --git-dir ~/.dotfiles/.git submodule update
echo "Initialized git submodules."

#
# bash
#
rm -f ~/.bash_aliases
ln -s ~/.dotfiles/.aliases ~/.bash_aliases

#
# ~/.gitconfig
#
link_gitconfig()
{
  rm -rf $HOME/.gitconfig
  ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
  echo "Linked gitconfig."
}

while true; do
    read -p "Do you wish to link ~/.gitconfig? (y/n) " yn
    case $yn in
        [Yy]* ) link_gitconfig; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

#
# ~/.ssh/config
#
link_ssh_config()
{
  rm -rf ~/.ssh/config
  ln -s ~/.dotfiles/ssh_config ~/.ssh/config
  echo "Linked ~/.ssh/config."
}

while true; do
    read -p "Do you wish to link ~/.ssh/config? (y/n) " yn
    case $yn in
        [Yy]* ) link_ssh_config; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
