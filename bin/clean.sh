#!/bin/bash 
echo "Completing final update..."

apt-update
apt-get -y upgrade
apt-get -y dist-upgrade


# Delete old kernals
dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | grep -v linux-libc-dev | xargs sudo apt-get -y purge

apt-get -y autoremove
apt-get clean