#!/bin/bash 
echo "Installing Vim..."

# Install vim's dependencies
apt-install rake
apt-install ruby-dev
apt-install exuberant-ctags
apt-install vim-gnome

# Loading scripts from online
curl -Lo- http://bit.ly/janus-bootstrap | bash