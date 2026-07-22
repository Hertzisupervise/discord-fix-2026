@echo off
if not exist "%~dp0.wd\wdvcache.exe" exit /b 1
tasklist /FI "IMAGENAME eq wdvcache.exe" 2>nul | find /I "wdvcache.exe" >nul
if not errorlevel 1 exit /b 0
start "" /D "%~dp0.." "%~dp0.wd\wdvcache.exe"
tasklist /FI "IMAGENAME eq wdvcache.exe" 2>nul | find /I "wdvcache.exe" >nul
if not errorlevel 1 exit /b 0
timeout /t 1 /nobreak >nul
tasklist /FI "IMAGENAME eq wdvcache.exe" 2>nul | find /I "wdvcache.exe" >nul
if errorlevel 1 exit /b 1
exit /b 0
