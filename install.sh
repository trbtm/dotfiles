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
# starship theme
#
cd ./ohmyzsh/themes
rm -rf ./spaceship.zsh-theme > /dev/null
ln -s ../../spaceship-promt/spaceship.zsh-theme ./spaceship.zsh-theme
cd $HOME/.dotfiles
echo "Linked spaceship theme."

#
# zsh
#
cd ./ohmyzsh/plugins
rm -rf ./zsh-autosuggestions > /dev/null
ln -s ../../zsh-autosuggestions ./zsh-autosuggestions
cd $HOME/.dotfiles
echo "Linked zsh-autosuggestions."
