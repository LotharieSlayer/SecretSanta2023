@echo off
@REM cd /d "%~dp0"  REM Assurez-vous que le repertoire de travail est celui du script

echo === Demarrage de la console Steam ===
call Resources\Scripts\openSteamConsole.bat

echo === Demarrage de la video de relaxation ===
call Resources\Scripts\startVideo.bat

echo === Demarrage de la console Steam ===
call Resources\Scripts\openSteamConsole.bat

echo === Activation des jeux sur Steam ===
call AutoHotkey\AutoHotkey64.exe Resources\Scripts\activateGames.ahk

echo === Attente de la fin de la video ===
timeout /t 60

echo === Ouvrir les jeux telecharges ===
call Resources\Scripts\openGames.bat

echo === Taches terminees ===
