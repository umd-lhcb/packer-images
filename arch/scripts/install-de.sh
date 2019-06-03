#!/usr/bin/bash -x

# Install X11
/usr/bin/pacman -S xorg-xserver

# Install Xfce
/usr/bin/pacman -S --noconfirm xfce4
echo -e 'exec startxfce4' > /home/vagrant/.xinitrc
chown vagrant:vagrant /home/vagrant/.xinitrc
