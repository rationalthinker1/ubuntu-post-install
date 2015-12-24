#!/bin/bash 
echo "Installing Sublime Text 3..."

# Add the Sublime Text 3 repository signing key to be able to verify downloaded packages
add-apt-repository -y ppa:webupd8team/sublime-text-3

# Update list of available packages
apt-get -y update

# Install Sublime Text 3
apt-get install -y --no-install-recommends sublime-text-installer