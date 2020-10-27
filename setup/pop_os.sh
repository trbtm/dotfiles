#!/usr/bin/env bash

tput setaf 2; echo "---- UPDATE, UPGRADE APT"; tput sgr0
sudo apt-get update
sudo apt-get upgrade

tput setaf 2; echo "---- INSTALL RANDOM STUFF"; tput sgr0
sudo apt-get install -y htop
sudo apt-get install -y gocryptfs zenity # Tresor
sudo apt-get install -y gnome-sushi
sudo apt-get install -y nautilus-dropbox 
sudo apt-get install -y nautilus-nextcloud
sudo apt-get install -y autorandr
sudo apt-get install -y gnome-tweaks

tput setaf 2; echo "---- REMOVE CLUTTER"; tput sgr0
sudo apt-get purge -y popsicle
sudo apt-get purge -y popsicle-gtk
sudo apt-get purge -y gnome-weather
sudo apt-get purge -y com.github.donadigo.eddy

tput setaf 2; echo "---- INSTALL ZSH"; tput sgr0
sudo apt-get install -y zsh
echo "Changing shell to zsh"
chsh -s /usr/bin/zsh


tput setaf 2; echo "---- PYENV"; tput sgr0
~/.dotfiles/setup/pyenv.sh

tput setaf 2; echo "---- BRAVE BROWSER"; tput sgr0
~/.dotfiles/setup/brave_browser.sh

tput setaf 2; echo "---- ALBERT"; tput sgr0
~/.dotfiles/setup/albert.sh

tput setaf 2; echo "---- VSCODE"; tput sgr0
~/.dotfiles/setup/visual_studio_code.sh

tput setaf 2; echo "---- INSOMNIA"; tput sgr0
~/.dotfiles/setup/insomnia.sh

tput setaf 2; echo "---- BALENA ETCHER"; tput sgr0
~/.dotfiles/setup/balena_etcher.sh

tput setaf 2; echo "---- PLEX MEDIA PLAYER"; tput sgr0
flatpak install --user https://flatpak.knapsu.eu/plex-media-player.flatpakref

tput setaf 2; echo "---- 1PASSWORD"; tput sgr0
~/.dotfiles/setup/1password.sh

tput setaf 2; echo "---- NUTTY"; tput sgr0
~/.dotfiles/setup/nutty.sh

tput setaf 2; echo "---- UBUNTU MAINLINE KERNELS"; tput sgr0
~/.dotfiles/setup/mainline_kernels.sh
