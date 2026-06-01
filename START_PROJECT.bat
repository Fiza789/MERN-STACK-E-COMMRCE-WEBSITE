@echo off
title Start Forever Full Stack E-Commerce
echo ===================================================
echo   STARTING FOREVER FULL-STACK E-COMMERCE ASSISTANT
echo ===================================================
echo.

start "" cmd /k "%~dp0\run_backend.bat"
echo Backend server starting in separate window...
timeout /t 3 /nobreak >nul

start "" cmd /k "%~dp0\run_frontend.bat"
echo Frontend dev server starting in separate window...
echo.
echo Opening browser...
timeout /t 2 /nobreak >nul
start http://localhost:5173/

echo.
echo All servers successfully triggered!
echo You can keep the other terminal windows open while working.
echo.
echo Press any key to close this launcher.
pause >nul
