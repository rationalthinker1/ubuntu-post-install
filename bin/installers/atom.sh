#!/bin/bash 
echo "Installing Atom..."

# Download installation file
wget https://atom.io/download/deb -O /tmp/atom-deb

# Run installation
dpkg -i /tmp/atom-deb

# Delete insatllation file
rm /tmp/atom-deb

# Setup Atom packages
apm install jsformat
apm install atom-handlebars
apm install language-slim
apm install autocomplete-ruby
apm install aligner-ruby
apm install git-blame
apm install tree-view-git-status
apm install git-history
apm install merge-conflicts