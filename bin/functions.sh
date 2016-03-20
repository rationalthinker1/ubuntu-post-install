#!/bin/bash
ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
BASE_DIR=$(dirname ${ABSOLUTE_PATH})

function install() {
	for application in "$@"
	do
		filename="${application}"
		${BASE_DIR}/installers/${filename}.sh
	done
}
export -f install

function gnome-install() {
	for extension_id in "$@"
	do
		${BASE_DIR}/installers/gnome-extension-installer.sh "${extension_id}"
	done
}
export -f gnome-install

function apt-install() {
	for application in "$@"
	do
		apt-get install -f -y "${application}"
    done
}
export -f apt-install

function apt-update() {
	apt-get -y update
}
export -f apt-update

function add-repo() {
	for repository in "$@"
	do
		add-apt-repository -y "${repository}"
    done
}
export -f add-repo

# simple-install ppa:numix/ppa numix-gtk-theme numix-icon-theme-circle
function simple-install() {
	repository=$1

	# Add the repository
	add-repo "${repository}"
	shift

	# Update list of available packages
	apt-update

	for application in "$@"
	do
		# Install application
		apt-install "${application}"
	done
}
export -f simple-install
