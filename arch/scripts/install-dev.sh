#!/usr/bin/bash -x

# Install & configure shell
/usr/bin/pacman -S --noconfirm zsh
chsh -s /usr/bin/zsh vagrant

# Install git & other basic tools
/usr/bin/pacman -S --noconfirm git tig git-annex vim xorg-xset

# Install clang
/usr/bin/pacman -S --noconfirm clang

# Install Python and pip
/usr/bin/pacman -S --noconfirm python python-pip

# Install ROOT
/usr/bin/pacman -S --noconfirm root

# Install docker
/usr/bin/pacman -S --noconfirm docker
/usr/bin/usermod -aG docker vagrant
/usr/bin/systemctl enable docker

# Install sublime
/usr/bin/curl -O https://download.sublimetext.com/sublimehq-pub.gpg && /usr/bin/pacman-key --add sublimehq-pub.gpg && /usr/bin/pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | /usr/bin/tee -a /etc/pacman.conf
/usr/bin/pacman -Syu --noconfirm sublime-text
