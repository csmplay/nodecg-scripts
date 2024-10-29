@echo off
cd nodecg || (
    echo Could not find nodecg directory
    exit /b 1
)

:: Requre to login to nodecg
set NODECG_LOGIN=0

:: String that is used to encrypt sessions
:: CHANGE THIS IF YOU ARE USING NODECG_LOGIN
set NODECG_SECRET="CSM is the best"

:: Discord bot information
:: It will allow all members of the server selected to use the bot
:: SET THIS IF YOU ARE USING NODECG_LOGIN
set NODECG_DISCORD_CLIENT=""
set NODECG_DISCORD_SECRET=""
set NODECG_DISCORD_SERVER_ID=""

node .
