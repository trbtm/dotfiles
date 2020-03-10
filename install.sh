#!/usr/bin/env bash

cd $HOME/.dotfiles

git submodule init
git submodule update
echo "Initialized git submodules."

#
# zshrc
#
cd $HOME
rm -rf ./.zshrc > /dev/null
ln -s ./.dotfiles/.zshrc ./.zshrc
cd $HOME/.dotfiles
echo "Linked zshrc."

#
# powerlevel10k theme
#
cd ./ohmyzsh/themes
rm -rf ./powerlevel10k.zsh-theme > /dev/null
ln -s ../../powerlevel10k/powerlevel10k.zsh-theme ./powerlevel10k.zsh-theme
cd $HOME
rm -rf ./.p10k.zsh > /dev/null
ln -s ./.dotfiles/.p10k.zsh ./.p10k.zsh
cd $HOME/.dotfiles

echo "Linked powerlevel10k theme."

#
# zsh-autosuggestions
#
cd ./ohmyzsh/plugins
rm -rf ./zsh-autosuggestions > /dev/null
ln -s ../../zsh-autosuggestions ./zsh-autosuggestions
cd $HOME/.dotfiles
echo "Linked zsh-autosuggestions."

#
# ~/.gitconfig
#

link_gitconfig()
{
  cd $HOME
  rm -rf ./.gitconfig > /dev/null
  ln -s ./.dotfiles/.gitconfig ./.gitconfig
  cd $HOME/.dotfiles
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