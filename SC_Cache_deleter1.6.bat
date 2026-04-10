@echo off
if "%ANSICON%"=="" (
    for /F "tokens=*" %%a in ('echo prompt $E^| cmd') do set "ESC=%%a"
)

echo %ESC%[36m----------"SC-4.7 Star Citizen cache & shaders suppressor V1.6"---------%ESC%[0m
echo %ESC%[36m"    __  __  ____     __  __      ____                                 "  %ESC%[0m
echo %ESC%[38;5;45m"   /\ \/\ \/\  _`\  /\ \/\ \    /\  _`\                               "  %ESC%[0m
echo %ESC%[38;5;51m"   \ \ \ \ \ \ \L\ \\ \ \_\ \   \ \ \/\_\    ___    ____   ____       "  %ESC%[0m
echo %ESC%[38;5;87m"    \ \ \ \ \ \  _ <'\ \  _  \   \ \ \ _ _  / __`\/\`'__\/\ '__`\     "  %ESC%[0m
echo %ESC%[38;5;123m"     \ \ \_\ \ \ \L\ \\ \ \ \ \   \ \ \L\ \/\ \L\ \ \ \/ \ \ \L\ \__  "  %ESC%[0m
echo %ESC%[38;5;159m"      \ \_____\ \____/ \ \_\ \_\   \ \____/\ \____/\ \_\  \ \ ,__/\_\ "  %ESC%[0m
echo %ESC%[38;5;195m"       \/_____/\/___/   \/_/\/_/    \/___/  \/___/  \/_/   \ \ \/\/_/ "  %ESC%[0m
echo %ESC%[38;5;231m"                                                            \ \_\     "  %ESC%[0m
echo %ESC%[38;5;231m"                                                             \/_/     "  %ESC%[0m
echo %ESC%[36m"------------------https://lotykilo.wixsite.com/ubhs-------------------"  %ESC%[0m
echo %ESC%[36m                   ---Union des Blanches Hermines---                       %ESC%[0m
echo %ESC%[36m                         --By-UBH-DR_Syruce--                              %ESC%[0m

set "folderPath=%USERPROFILE%\AppData\Local\Star Citizen"

echo Ce script va supprimer TOUT le cache et shaders de Star Citizen, 
echo sans risque pour vos Controles et Settings Perso.
echo Chemin cible : %folderPath%
echo.
echo Suppression du Cache et des Shaders de SC .?  
echo.

choice /C ON /N /M "Confirmez-vous la suppression ? (O=Oui/N=Non)"
if errorlevel 2 (
    echo.
    echo Operation annulee.
    timeout /t 3 /nobreak >nul
    exit /b
)

echo.
echo Suppression en cours...
if exist "%folderPath%" (
    del /q /f "%folderPath%\*.*" >nul 2>&1
    for /d %%i in ("%folderPath%\*") do rd /s /q "%%i" >nul 2>&1
    
    echo --------------------------------------
    echo Suppression terminee avec succes.
    echo Merci %USERNAME%, fly safe o7
    echo ---------------Join Us----------------
) else (
    echo --------------------------------------
    echo Le dossier n'existe pas : %folderPath%
    echo Verifiez votre installation de Star Citizen.
    echo --------------------------------------
)

timeout /t 6 /nobreak >nul
