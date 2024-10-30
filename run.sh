#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

cd nodecg || {
	echo "Could not find nodecg directory"
	exit 1
}

# SET THIS IF RUNNING ON A REMOTE SERVER
export NODECG_URL=""               # URL TO YOUR NODECG SERVER
export NODECG_SECRET=""            # SESSION SECRET
export NODECG_DISCORD_CLIENT=""    # DISCORD CLIENT ID
export NODECG_DISCORD_SECRET=""    # DISCORD SECRET
export NODECG_DISCORD_SERVER_ID="" # DISCORD SERVER ID

node .
