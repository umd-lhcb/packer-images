#!/usr/bin/env bash

PASSWORD=$(/usr/bin/openssl passwd -crypt 'developer')

echo "==> Enabling SSH"
# Vagrant-specific configuration
/usr/bin/useradd --password ${PASSWORD} --comment 'Developer' --create-home --user-group developer
echo 'Defaults env_keep += "SSH_AUTH_SOCK"' > /etc/sudoers.d/10_developer
echo 'developer ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/10_developer
/usr/bin/chmod 0440 /etc/sudoers.d/10_developer
/usr/bin/systemctl start sshd.service
