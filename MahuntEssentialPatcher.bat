@echo off
title Manhunt Essential Patcher - by hideNFN
rename manhunt.exe manhunt.exe.old
rename testapp.exe manhunt.exe
link.exe -edit -nxcompat:no -dynamicbase:no manhunt.exe
cd "audio\PC\SCRIPTED\CRAPPER" 
rename CRAPPER.RIB CR4PPER.RIB
cd ..
cd PORN
rename PORN.RIB P0RN.RIB
echo Patch was successfully installed.
pause
exit