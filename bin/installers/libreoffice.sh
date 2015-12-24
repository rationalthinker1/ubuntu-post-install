#!/bin/bash 
echo "Installing LibreOffice..."

# Add the repository
add-repo ppa:libreoffice/ppa

# Update list of available packages
apt-update

# Install
apt-install libreoffice