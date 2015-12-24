#!/bin/bash 

# Check if the script is running as root.
if [[ $EUID -ne 0 ]]; then
   echo "This script must be ran as root."
   exit 1
fi

# Load basic functions to run this script.
source ./bin/functions.sh

# Installs basic packages
install basic

# Installing script. Add # at the beginning to not install them.
# install atom
# install chrome
install dropbox
install numix
install sublime-text-3
install veracrypt

# Runs the updates on the packages installed
install update