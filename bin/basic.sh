#!/bin/bash 
echo "Installing Basic..."

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

apt-install build-essential
apt-install ubuntu-restricted-extras
apt-install filezilla
apt-install p7zip-full
apt-install vlc
apt-install unzip
apt-install htop
apt-install curl
apt-install git