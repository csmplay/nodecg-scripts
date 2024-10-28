@echo off
cd nodecg || (
    echo Could not find nodecg directory
    exit /b 1
)

git pull | findstr /C:"Already up to date." >nul
if errorlevel 1 (
    npm install && npm run build
) else (
    echo NodeCG is already up to date
)

