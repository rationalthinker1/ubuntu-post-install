#!/bin/bash 
echo "Installing Node..."

# Download and run script
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -

# Install
apt-get install -y --no-install-recommends -y nodejs