@echo off
title FIHD
cd /d "%~dp0"
node --expose-gc --max-old-space-size=2048 reff.js
pause