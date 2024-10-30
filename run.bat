@echo off
cd nodecg || (
    echo Could not find nodecg directory
    exit /b 1
)

:: SET THIS IF RUNNING ON A REMOTE SERVER
set NODECG_URL=""               :: URL TO YOUR NODECG SERVER
set NODECG_SECRET=""            :: SESSION SECRET
set NODECG_DISCORD_CLIENT=""    :: DISCORD CLIENT ID
set NODECG_DISCORD_SECRET=""    :: DISCORD SECRET
set NODECG_DISCORD_SERVER_ID="" :: DISCORD SERVER ID

node .
