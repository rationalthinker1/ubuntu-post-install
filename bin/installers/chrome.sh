#!/bin/bash 
echo "Installing Chrome..."

# Add the Chrome repository
add-repo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

# Signing key to be able to verify downloaded packages
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Install Chrome's dependencies
apt-install libxss1

# Force to install any depencies
apt-get -f install

# Download package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb

# Install package
dpkg -i /tmp/chrome.deb

# Create the configuration folder
mkdir -p "$HOME/.config/google-chrome/"
touch "$HOME/.config/google-chrome/First Run"

# Delete package
rm /tmp/chrome.deb
