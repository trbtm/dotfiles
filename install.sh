#!/usr/bin/env bash

# Legacy
rm -f ~/.p10k.zsh
rm -f ~/.zshrc
rm -f ~/.zsh_history
rm -f ~/.zcompdump*
rm -rf ~/.dotfiles/ohmyzsh
rm -rf ~/.dotfiles/powerlevel10k
rm -rf ~/.dotfiles/zsh-autosuggestions

#
# bash
#
rm -f ~/.bash_aliases
ln -s ~/.dotfiles/aliases.bash ~/.bash_aliases

#
# fish
#
curl -fsSL https://starship.rs/install.sh | bash
mkdir -p ~/.config/fish/
rm -f ~/.config/fish/config.fish
ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish

#
# ~/.gitconfig
#
link_gitconfig()
{
  rm -rf ~/.gitconfig
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
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
