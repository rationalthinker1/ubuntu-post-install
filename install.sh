#!/bin/bash 

# Load basic functions to run this script.
source ./bin/functions.sh

# Check if the script is running as root.
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# Installs basic packages
#install basic

# Installing script. Add # at the beginning to not install them.
#install atom
#install chrome
#install dropbox
#install node
#install numix
#install spotify
#install sshrc
#install sublime-text-3

# Clean up after installing
#source ./bin/clean.sh

# Gnome extension installer
gnome-install 517 # - Caffeine
gnome-install 6   # - Applications Menu
gnome-install 307 # - Dash to Dock 
gnome-install 442 # - Drop Down Terminal
gnome-install 277 # - Impatience
gnome-install 55  # - Media player indicator
gnome-install 118 # - No Topleft Hot Corner
gnome-install 8   # - Places Status Indicator 
gnome-install 341 # - SettingsCenter
gnome-install 584 # - TaskBar
gnome-install 19  # - User Themes 
