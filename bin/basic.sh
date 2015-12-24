#!/bin/bash 

echo "Installing Basic..."

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

apt-get install -y --no-install-recommends build-essential
apt-get install -y --no-install-recommends ubuntu-restricted-extras
apt-get install -y --no-install-recommends filezilla
apt-get install -y --no-install-recommends p7zip-full
apt-get install -y --no-install-recommends vlc
apt-get install -y --no-install-recommends unzip
apt-get install -y --no-install-recommends htop

apt-get install -y --no-install-recommends git