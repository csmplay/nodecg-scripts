#!/usr/bin/env bash
# Using '/usr/bin/env bash' to ensure that the script will work on NixOS

cd nodecg || {
	echo "Could not find nodecg directory"
	exit 1
}

# Requre to login to nodecg
export NODECG_LOGIN=0

# String that is used to encrypt sessions
# CHANGE THIS IF YOU ARE USING NODECG_LOGIN
export NODECG_SECRET="CSM is the best"

# Discord bot information
# It will allow all members of the server selected to use the bot
# SET THIS IF YOU ARE USING NODECG_LOGIN
export NODECG_DISCORD_CLIENT=""
export NODECG_DISCORD_SECRET=""
export NODECG_DISCORD_SERVER_ID=""

node .
