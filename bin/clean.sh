#!/bin/bash 
echo "Completing final update..."

# Upgrading everything
apt-get -y upgrade
apt-get -y dist-upgrade

# Delete old kernals
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | grep -v linux-libc-dev | xargs sudo apt-get -y purge

# Cleaning and removing unused packages
apt-get -y autoremove
apt-get clean

# disable crash reports
sudo sed -i 's/enabled=1/enabled=0/' /etc/default/apport

# check updates each 2 weeks
dconf write /com/ubuntu/update-notifier/regular-auto-launch-interval 14

# disable overlay scrollbars
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# install git extras https://github.com/visionmedia/git-extras
(cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)
