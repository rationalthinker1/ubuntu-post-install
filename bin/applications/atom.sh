#!/bin/bash 
echo "Installing Atom..."

# Download installation file
wget https://atom.io/download/deb -O /tmp/atom-deb

# Run installation
dpkg -i /tmp/atom-deb

# Delete insatllation file
rm atom-deb