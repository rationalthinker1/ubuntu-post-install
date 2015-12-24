#!/bin/bash 
echo "Installing Virtualbox..."

# Installing some prerequisites 
apt-install dkms
apt-install bcc
apt-install iasl
apt-install xsltproc
apt-install xalan
apt-install libxalan110-dev
apt-install uuid-dev
apt-install zlib1g-dev
apt-install libidl-dev
apt-install libsdl1.2-dev
apt-install libxcursor-dev
apt-install libqt3-headers
apt-install libqt3-mt-dev
apt-install libasound2-dev
apt-install libstdc++5
apt-install build-essential

# Installing Oracle public key
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add the repository
echo deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib | tee /etc/apt/sources.list.d/virtualbox.list

# Update list of available packages
apt-update

# Install
apt-install virtualbox-5.0