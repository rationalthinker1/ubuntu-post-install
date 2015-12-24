#!/bin/bash

function install() {
	ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
	BASE_DIR=$(dirname ${ABSOLUTE_PATH})
	FILENAME=$1

	chmod u+x ${BASE_DIR}/installers/${FILENAME}.sh
	${BASE_DIR}/installers/${FILENAME}.sh
}
export -f install

function apt-install() {
	APPNAME=$1
	apt-get install -y --no-install-recommends "${APPNAME}"
}
export -f apt-install

function apt-update() {
	apt-get -y update
}
export -f apt-update

function add-repo() {
	REPO=$1
	add-apt-repository -y "${REPO}"
}
export -f add-repo