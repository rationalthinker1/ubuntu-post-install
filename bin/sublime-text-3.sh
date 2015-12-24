#!/bin/bash 
echo "Installing Sublime Text 3..."

# Add the repository
add-apt-repository -y ppa:webupd8team/sublime-text-3

# Update list of available packages
apt-get -y update

# Install
apt-install sublime-text-installer