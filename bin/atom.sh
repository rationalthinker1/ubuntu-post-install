#!/bin/bash 
echo "Installing Atom..."

# Add repository
add-apt-repository ppa:unit193/encryption

# Update list of available packages
apt-get -y update

# Install
apt-get install -y --no-install-recommends veracrypt


#!/bin/bash
echo "Installing Atom..."

# Download installation file
wget https://atom.io/download/deb -O /tmp/atom-deb

# Run installation
dpkg -i /tmp/atom-deb

# Delete insatllation file
rm atom-deb