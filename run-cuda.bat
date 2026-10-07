@echo off
cd /d "%~dp0"
.\venv\Scripts\python.exe run.py --execution-provider cuda
pause
