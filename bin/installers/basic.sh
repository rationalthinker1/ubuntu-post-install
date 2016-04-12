#!/bin/bash
echo "Installing Basic..."

sudo apt-get update && sudo apt-get install -f

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
add-repo "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

apt-install build-essential
apt-install ubuntu-restricted-extras
apt-install autoconf
apt-install filezilla
apt-install p7zip-full
apt-install vlc
apt-install unzip
apt-install htop
apt-install curl
apt-install git
apt-install vim
apt-install vim-gnome

# install git extras https://github.com/visionmedia/git-extras
(rm -rf /tmp/git-extras && cd /tmp && git clone --depth 1 https://github.com/visionmedia/git-extras.git && cd git-extras && sudo make install)
