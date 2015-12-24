#!/bin/bash 
echo "Completing final update..."

apt-update
apt-get -y upgrade
apt-get -y dist-upgrade

apt-get -y autoremove