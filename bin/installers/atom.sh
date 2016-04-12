#!/bin/bash 
echo "Installing Atom..."

# Download installation file
simple-install ppa:webupd8team/atom atom

# Setup Atom packages
apm install atom-handlebars
apm install language-slim
apm install autocomplete-ruby
apm install aligner-ruby
apm install tree-view-git-status
apm install git-history
apm install merge-conflicts
