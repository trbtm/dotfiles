#!/usr/bin/env bash

cd $HOME/.dotfiles

git submodule init
git submodule update
echo "Initialized git submodules."

#
# zshrc
#

rm -rf $HOME/.zshrc > /dev/null
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
echo "Linked zshrc."

#
# powerlevel10k theme
#
rm -rf $HOME/.dotfiles/ohmyzsh/themes/powerlevel10k.zsh-theme > /dev/null
ln -s $HOME/.dotfiles/powerlevel10k/powerlevel10k.zsh-theme $HOME/.dotfiles/ohmyzsh/themes/powerlevel10k.zsh-theme
rm -rf $HOME/.p10k.zsh > /dev/null
ln -s $HOME/.dotfiles/.p10k.zsh $HOME/.p10k.zsh

echo "Linked powerlevel10k theme."

#
# zsh-autosuggestions
#
rm -rf $HOME/.dotfiles/ohmyzsh/plugins/zsh-autosuggestions > /dev/null
ln -s $HOME/.dotfiles/zsh-autosuggestions $HOME/.dotfiles/ohmyzsh/plugins/zsh-autosuggestions
echo "Linked zsh-autosuggestions."

#
# ~/.gitconfig
#
link_gitconfig()
{
  rm -rf $HOME/.gitconfig > /dev/null
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
  rm -rf $HOME/.ssh/config > /dev/null
  ln -s $HOME/.dotfiles/ssh_config $HOME/.ssh/config
  echo "Linked ssh/config."
}

while true; do
    read -p "Do you wish to link ./.ssh/config? (y/n) " yn
    case $yn in
        [Yy]* ) link_ssh_config; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done
