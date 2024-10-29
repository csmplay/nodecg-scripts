#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

if ! [ -x "$(command -v git)" ]; then
	echo 'Error: git is not installed.' >&2
	exit 1
elif ! [ -x "$(command -v npm)" ]; then
	echo 'Error: nodejs is not installed.' >&2
	exit 1
fi

git clone --depth 1 https://github.com/csmplay/nodecg
cd nodecg || {
	echo "Error! nodecg doesn't exist"
	exit 1
}
git pull
npm install
# npx nodecg install "BUNDLE_REPO/BUNDLE_NAME"
npm run build
