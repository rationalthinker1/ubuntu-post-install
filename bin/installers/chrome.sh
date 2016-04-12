#!/bin/bash 
echo "Installing Chrome..."

# Add the Chrome repository
add-repo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"

# Signing key to be able to verify downloaded packages
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Update repo
apt-update

# Force to install any depencies
apt-get -f install

# Install Chrome 
apt-install google-chrome-stable

# Install Chrome's dependencies
apt-install libxss1 libappindicator1 libindicator7

# Create the configuration folder
mkdir -p "$HOME/.config/google-chrome/"
touch "$HOME/.config/google-chrome/First Run"
