#!/usr/bin/bash -x

# Install & configure shell
/usr/bin/pacman -S --noconfirm zsh
chsh -s /usr/bin/zsh vagrant

# Install git & friends
/usr/bin/pacman -S --noconfirm git tig git-annex

# Install docker
/usr/bin/pacman -S --noconfirm docker
/usr/bin/usermod -aG docker vagrant
