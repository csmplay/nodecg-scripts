#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

cd nodecg || {
	echo "Could not find nodecg directory"
	exit 1
}

if git pull | grep -q 'Already up to date.'; then
	echo "NodeCG is already up to date"
else
	npm install && npm run build
fi
