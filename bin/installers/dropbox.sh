#!/bin/bash
echo "Installing Dropbox..."

wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

./.dropbox-dist/dropboxd

# Add repository key
apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E

# Add the repository
add-repo "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"

# Update list of available packages
apt-update

# Install
apt-install dropbox
