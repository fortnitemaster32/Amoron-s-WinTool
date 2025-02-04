@echo off

:main
cls
color 5
title WinTool - By Amoron21
chcp 65001 >nul
call :banner
echo ┌ 0) exit
echo ├ 1) minimalist apps install
echo ├ 2) Full app install
echo ├ 3) update apps
echo ├ 4) run tweaks(run as admin)
:a
set /p cmd= └
if '%cmd%'=='0' exit 
if '%cmd%'=='1' goto :install
if '%cmd%'=='2' goto :fulinstall
if '%cmd%'=='3' goto :update
if '%cmd%'=='4' goto :tweaks 
pause
goto main
:install
winget install --id 7zip.7zip
winget install --id Mozilla.Firefox
winget install --id VideoLAN.VLC
winget install --id Discord.Discord
winget install --id Notepad++.Notepad++
goto main
:fulinstall
winget install --id 7zip.7zip
winget install --id Mozilla.Firefox
winget install --id VideoLAN.VLC
winget install --id Discord.Discord
winget install --id Notepad++.Notepad++
winget install --id Valve.Steam
winget install --id Python.Python.3.9 
winget install --id Microsoft.VisualStudioCode
winget install --id EpicGames.EpicGamesLauncher
winget install --id Ubisoft.Connect
winget install --id Microsoft.PowerToys
winget install --id OBSProject.OBSStudio
winget install --id WireGuard.WireGuard
winget install --id MedalB.V.Medal
winget install --id CharlesMilette.TranslucentTB 
winget install --id Guru3D.Afterburner 
goto main
:update
winget upgrade --all
goto main
:tweaks
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseSpeed /t REG_DWORD /d 0 /f >null
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseThreshold1 /t REG_DWORD /d 0 /f >null
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v MouseThreshold2 /t REG_DWORD /d 0 /f >null
echo Mouse accel disabled
sc config DiagTrack start= disabled
echo disabled DiagTrack
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "CortanaEnabled" /t REG_DWORD /d 0 /f
echo disable bing search in WinSearch
timeout /t 3 /nobreak >nul
goto main
:banner
echo.
echo ╔═╗┌┬┐┌─┐┬─┐┌─┐┌┐┌┌─┐ ╦ ╦┬┌┐┌╔╦╗┌─┐┌─┐┬  
echo ╠═╣││││ │├┬┘│ ││││└─┐ ║║║││││ ║ │ ││ ││  
echo ╩ ╩┴ ┴└─┘┴└─└─┘┘└┘└─┘ ╚╩╝┴┘└┘ ╩ └─┘└─┘┴─┘
echo.
