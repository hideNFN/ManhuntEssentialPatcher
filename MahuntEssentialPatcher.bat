@echo off
title Manhunt Essential Patcher @ https://github.com/hideNFN/ManhuntEssentialPatcher
if not exist manhunt.exe exit
if not exist testapp.exe exit
mkdir BACKUP
move manhunt.exe BACKUP\manhunt.exe.backup
copy testapp.exe BACKUP\testapp.exe.backup
rename testapp.exe manhunt.exe
link.exe -edit -nxcompat:no -dynamicbase:no manhunt.exe
start MEP2.bat
exit