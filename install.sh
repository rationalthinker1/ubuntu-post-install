#!/bin/bash 

# Check if the script is running as root.
if [[ $EUID -ne 0 ]]; then
   echo "This script must be ran as root."
   exit 1
fi

# Load basic functions to run this script.
source ./bin/functions.sh

install atom