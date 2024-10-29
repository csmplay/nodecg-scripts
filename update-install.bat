@echo off
where git >nul 2>nul
if errorlevel 1 (
    echo Error: git is not installed.
    exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
    echo Error: nodejs is not installed.
    exit /b 1
)

git clone --depth 1 https://github.com/csmplay/nodecg

cd nodecg || (
    echo Error! nodecg doesn't exist
    exit /b 1
)

git pull
npm install
:: npx nodecg install "BUNDLE_REPO/BUNDLE_NAME"
npm run build
