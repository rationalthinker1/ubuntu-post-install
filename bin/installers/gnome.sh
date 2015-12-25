#!/bin/bash 
echo "Installing Gnome 3..."

# Add the repository
add-repo ppa:gnome3-team/gnome3

# Update list of available packages
apt-update

# Install
apt-install fonts-cantarell
apt-install gnome-shell gnome-shell-extensions gnome-session gnome-terminal
apt-install nautilus