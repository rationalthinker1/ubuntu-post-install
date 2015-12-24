#!/bin/bash 
echo "Installing Tor Browser..."

# Delete old setting if they exists
rm -r ~/tor-browser-* > /dev/null

# Add the repository
add-repo ppa:webupd8team/tor-browser

# Update list of available packages
apt-update

# Install
apt-install tor-browser