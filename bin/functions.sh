#!/bin/bash

function hello() {
	NAME=$1

	echo -e "Hello ${NAME}! How are you?"
}

function install() {
	ABSOLUTE_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)/`basename "${BASH_SOURCE[0]}"`
	BASE_DIR=$(dirname ${ABSOLUTE_PATH})
	FILENAME=$1

	${BASE_DIR}/${FILENAME}.sh
}