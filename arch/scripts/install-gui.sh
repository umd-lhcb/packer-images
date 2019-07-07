#!/usr/bin/bash -x

# Install X11
/usr/bin/pacman -S --noconfirm xorg-server

# Install Xfce
/usr/bin/pacman -S --noconfirm xfce4

# Install a web browser
/usr/bin/pacman -S --noconfirm firefox
