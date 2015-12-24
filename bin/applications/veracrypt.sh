#!/bin/bash 
echo "Installing VeraCrypt..."

# Add repository
add-apt-repository -y ppa:unit193/encryption

# Update list of available packages
apt-get -y update

# Install
apt-get install -y --no-install-recommends veracrypt