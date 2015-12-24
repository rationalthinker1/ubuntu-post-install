#!/bin/bash

function install() {
	ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
	BASE_DIR=$(dirname ${ABSOLUTE_PATH})
	FILENAME=$1

	${BASE_DIR}/applications/${FILENAME}.sh
}

function apt-install() {
	APPNAME=$1
	apt-get install -y --no-install-recommends "${APPNAME}"
}

function apt-update() {
	apt-get -y update
}

function add-repo() {
	REPO=$1
	add-apt-repository -y "${REPO}"
}