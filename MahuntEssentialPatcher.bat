@echo off
title Manhunt Essential Patcher @ https://github.com/hideNFN/ManhuntEssentialPatcher
mkdir BACKUP
move manhunt.exe BACKUP\manhunt.exe.backup
copy testapp.exe BACKUP\testapp.exe.backup
rename testapp.exe manhunt.exe
link.exe -edit -nxcompat:no -dynamicbase:no manhunt.exe
cd "audio\PC\SCRIPTED\CRAPPER" 
rename CRAPPER.RIB CR4PPER.RIB
cd ..
cd PORN
rename PORN.RIB P0RN.RIB
cd ..
cd GASPOUR
rename GASPOUR.RIB GASP0UR.RIB
echo Patch was successfully installed.
pause
exit