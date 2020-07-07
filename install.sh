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

configure_fish()
{
  bash <( curl -fsSL https://starship.rs/install.sh )
  mkdir -p ~/.config/fish/
  rm -f ~/.config/fish/config.fish
  ln -s ~/.dotfiles/config.fish ~/.config/fish/config.fish
  
  if [[ "$OSTYPE" == "darwin"* ]]; then
    fish -c "omf install osx" > /dev/null 2>&1
  fi
}

user_yes_no "Do you want to configure the fish shell?" configure_fish

#
# ~/.gitconfig
#
link_gitconfig()
{
  rm -rf ~/.gitconfig
  ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
  echo "Linked gitconfig."
}

user_yes_no "Do you wish to link ~/.gitconfig?" link_gitconfig

#
# ~/.gitignore
#
link_gitignore()
{
  rm -rf ~/.gitignore
  ln -s ~/.dotfiles/.gitignore ~/.gitignore
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
