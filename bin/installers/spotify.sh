#!/bin/bash 
echo "Installing Spotify..."

add-repo "deb http://repository.spotify.com stable non-free"

# Add the repository signing key to be able to verify downloaded packages
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886

# Add the repository
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/spotify.list

# Update list of available packages
apt-update

# Install
apt-install spotify-client
