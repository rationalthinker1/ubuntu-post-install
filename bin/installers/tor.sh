#!/bin/bash 
echo "Installing Tor Browser..."

# Delete old setting if they exists
rm -r ~/tor-browser-* > /dev/null

simple-install ppa:webupd8team/tor-browser tor-browser