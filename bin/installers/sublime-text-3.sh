#!/bin/bash 
ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
BASE_DIR=$(dirname ${ABSOLUTE_PATH})
source $(dirname ${BASE_DIR})/functions.sh

echo "Installing Sublime Text 3..."

# Add the repository
add-repo ppa:webupd8team/sublime-text-3

# Update list of available packages
apt-update

# Install
apt-install sublime-text-installer