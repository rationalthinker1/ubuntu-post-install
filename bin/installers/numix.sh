#!/bin/bash 
echo "Installing Numix themes and icons..."

# Add the repository
add-repo ppa:numix/ppa

# Update list of available packages
apt-update

# Install
apt-install numix-gtk-theme
apt-install numix-icon-theme-circle