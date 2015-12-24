#!/bin/bash

function install() {
	ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
	BASE_DIR=$(dirname ${ABSOLUTE_PATH})

	for application in "$@"
	do
		filename="${application}"
		chmod u+x ${BASE_DIR}/installers/${filename}.sh
		${BASE_DIR}/installers/${filename}.sh
    done
}
export -f install

function apt-install() {
	for application in "$@"
	do
		apt-get install -y --no-install-recommends "${application}"
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