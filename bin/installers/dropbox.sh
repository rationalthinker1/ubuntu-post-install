#!/bin/bash 
echo "Installing Dropbox..."

# Add repository key
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E

# Add the repository
add-repo "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"

# Update list of available packages
apt-update

# Install
apt-install nautilus-dropbox