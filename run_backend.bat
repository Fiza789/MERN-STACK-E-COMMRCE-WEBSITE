@echo off
title Forever Backend Server
cd /d "%~dp0\backend"
echo Starting Forever Backend Server...
set "PLAYWRIGHT_NODE=C:\Users\Apple Computer\AppData\Local\ms-playwright-go\1.57.0\node.exe"
if exist "%PLAYWRIGHT_NODE%" (
    "%PLAYWRIGHT_NODE%" server.js
) else (
    node server.js
)
pause
