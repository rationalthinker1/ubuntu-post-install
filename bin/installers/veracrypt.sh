#!/bin/bash 
ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
BASE_DIR=$(dirname ${ABSOLUTE_PATH})
source $(dirname ${BASE_DIR})/functions.sh

echo "Installing VeraCrypt..."

# Add repository
add-repo ppa:unit193/encryption

# Update list of available packages
apt-update

# Install
apt-install veracrypt