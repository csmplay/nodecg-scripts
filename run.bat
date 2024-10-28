@echo off
cd nodecg || (
    echo Could not find nodecg directory
    exit /b 1
)

node .
