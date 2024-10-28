#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

cd nodecg || {
	echo "Could not find nodecg directory"
	exit 1
}

node .
