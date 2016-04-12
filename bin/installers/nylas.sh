#!/bin/bash
echo "Installing Nylas..."

# Signing key to be able to verify downloaded packages
wget https://edgehill.nylas.com/download?platform=linux-deb -O nylas.deb

dpkg -i nylas.deb

rm nylas.deb
