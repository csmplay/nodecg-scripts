#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

if ! [ -x "$(command -v git)" ]; then
	echo 'Error: git is not installed.' >&2
	exit 1
elif ! [ -x "$(command -v npm)" ]; then
	echo 'Error: nodejs is not installed.' >&2
	exit 1
fi

git clone --depth 1 https://github.com/csmplay/nodecg || {
	echo "Failed to download nodecg. Is it already installed?"
	exit 1
}
cd nodecg || {
	echo "Cannot find nodecg"
	exit 1
}
npm install
# npx nodecg install "BUNDLE_REPO/BUNDLE_NAME"
npm run build
