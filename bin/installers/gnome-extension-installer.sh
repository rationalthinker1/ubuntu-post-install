#!/bin/sh
# http://bernaerts.dyndns.org/linux/76-gnome/283-gnome-shell-install-extension-command-line-script
# --------------------------------------------
# Install extension from
# Gnome Shell Extensions site
# Depends on :
#   * unzip
# Parameter :
#   $1 = Target Gnome Shell version
#   $2 = Extension ID on the site
# Revision history :
#   13/07/2013 - V1.0 : Creation by N. Bernaerts
#   15/03/2015 - V1.1 : Update thanks to Michele Gazzetti
#   02/10/2015 - V1.2 : Disable wget gzip compression
# -------------------------------------------

# set gnome shell extension site URL
GNOME_SITE="https://extensions.gnome.org"

# gnome shell target version
GNOME_VERSION="$(gnome-shell --version | cut -d' ' -f3)"

# set extension ID (from command line parameter)
EXTENSION_ID="$1"

# installation path is in user home directory
EXTENSION_PATH="$HOME/.local/share/gnome-shell/extensions";

# get extension description
wget --header='Accept-Encoding:none' -O /tmp/extension.txt "${GNOME_SITE}/extension-info/?pk=${EXTENSION_ID}&shell_version=${GNOME_VERSION}"

# get extension UUID
EXTENSION_UUID=$(cat /tmp/extension.txt | grep "uuid" | sed 's/^.*uuid[\": ]*\([^\"]*\).*$/\1/')

# get extension download URL
EXTENSION_URL=$(cat /tmp/extension.txt | grep "download_url" | sed 's/^.*download_url[\": ]*\([^\"]*\).*$/\1/')

if [ "$EXTENSION_URL" != "" ]
then
  # download extension archive
  wget --header='Accept-Encoding:none' -O /tmp/extension.zip "${GNOME_SITE}${EXTENSION_URL}"

  # unzip extension to installation folder
  mkdir -p "${EXTENSION_PATH}/${EXTENSION_UUID}"
  unzip /tmp/extension.zip -d "${EXTENSION_PATH}/${EXTENSION_UUID}"
  chown -R raza:raza "${EXTENSION_PATH}/${EXTENSION_UUID}"
  
  # list enabled extensions
  EXTENSION_LIST=$(gsettings get org.gnome.shell enabled-extensions | sed 's/^.\(.*\).$/\1/')

  # check if extension is already enabled
  EXTENSION_ENABLED=$(echo ${EXTENSION_LIST} | grep ${EXTENSION_UUID})

  if [ "$EXTENSION_ENABLED" = "" ]
  then
    # enable extension
    gsettings set org.gnome.shell enabled-extensions "[${EXTENSION_LIST},'${EXTENSION_UUID}']"

    # extension is not available
    echo "Extension with ID ${EXTENSION_ID} has been enabled. Restart Gnome Shell to take effect."
  fi
else
  # extension is not available
  echo "Extension with ID ${EXTENSION_ID} is not available for Gnome Shell ${GNOME_VERSION}"
fi

# remove temporary files
rm -f /tmp/extension.txt
rm -f /tmp/extension.zip 
