#!/bin/bash 
echo "Installing Java 8..."

# Install dependencies
apt-install python-software-properties debconf-utils

# Adding Repository
app-repo ppa:webupd8team/java

# Updating package list
apt-update

# Agree to license
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections

# Install
apt-install oracle-java8-installer