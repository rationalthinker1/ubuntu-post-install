#!/bin/bash 
echo "Installing Vim..."

# Install Vim 
apt-get install git curl rake ruby-dev exuberant-ctags vim-gnome

# Loading scripts from online
curl -Lo- http://bit.ly/janus-bootstrap | bash