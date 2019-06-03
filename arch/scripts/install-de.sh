#!/usr/bin/bash -x

# Install X11
/usr/bin/pacman -S --noconfirm xorg-server

# Install Xfce
/usr/bin/pacman -S --noconfirm xfce4
echo -e 'VBoxClient-all' > /home/vagrant/.xinitrc
echo -e 'exec startxfce4' >> /home/vagrant/.xinitrc
chown vagrant:vagrant /home/vagrant/.xinitrc

# Install a web browser
/usr/bin/pacman -S --noconfirm firefox
