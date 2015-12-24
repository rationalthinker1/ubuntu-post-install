#!/bin/bash 
echo "Installing VeraCrypt..."

# Add repository
add-repo ppa:unit193/encryption

# Update list of available packages
apt-get -y update

# Install
apt-install veracrypt