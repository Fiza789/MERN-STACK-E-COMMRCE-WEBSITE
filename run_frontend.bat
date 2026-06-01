@echo off
title Forever Frontend Server
cd /d "%~dp0\frontend"
echo Starting Forever Frontend Server...
set "PLAYWRIGHT_NODE=C:\Users\Apple Computer\AppData\Local\ms-playwright-go\1.57.0\node.exe"
if exist "%PLAYWRIGHT_NODE%" (
    "%PLAYWRIGHT_NODE%" node_modules\vite\bin\vite.js
) else (
    npm run dev
)
pause
