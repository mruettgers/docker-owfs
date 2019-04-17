#!/bin/bash

# if command starts with an option, prepend command
if [ "${1:0:1}" = '-' ]; then
	set -- owserver --foreground "$@"
fi

exec "$@"
