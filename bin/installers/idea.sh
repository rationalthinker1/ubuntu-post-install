#!/bin/bash
echo "Installing Intellij IDEA ..."

# Get the download link
link=$(wget -qO- "https://data.services.jetbrains.com/products/releases?code=IIU%2CIIC&latest=true&type=release" | grep -Po 'https://.*ideaIU.*?tar.gz' | cut -d\" -f25)

# Download idea-IU
wget "${link}" -O /tmp/idea-IU.tar.gz

# Extract
tar -xvzf /tmp/idea-IU.tar.gz -C /opt --transform s/IU.*/IU/
rm /tmp/idea-IU.tar.gz
chmod u+x /opt/idea-IU/bin/idea.sh
/opt/idea-IU/bin/idea.sh

#drwxr-xr-x  5 root root 4.0K Apr 12 14:52 atom
#drwxr-xr-x  3 root root 4.0K Apr 12 14:15 google
#drwxrwxr-x  9 raza raza 4.0K Apr 12 16:32 idea-IU
#drwxr-xr-x 29 root root 4.0K Apr 13 12:34 lampp
#drwxr-xr-x  4 root root 4.0K Apr 12 15:15 sublime_text
