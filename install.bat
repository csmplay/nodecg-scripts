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
if errorlevel 1 (
    echo Failed to download nodecg. Is it already installed?
    exit /b 1
)

cd nodecg || (
    echo Cannot find nodecg
    exit /b 1
)

npm install
REM npx nodecg install "BUNDLE_REPO/BUNDLE_NAME"
npm run build
