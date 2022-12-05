@echo off
title Manhunt Essential Patcher @ https://github.com/hideNFN/ManhuntEssentialPatcher
if not exist manhunt.exe exit
if not exist testapp.exe exit
mkdir BACKUP
move manhunt.exe BACKUP\manhunt.exe.backup
copy testapp.exe BACKUP\testapp.exe.backup
rename testapp.exe manhunt.exe
link.exe -edit -nxcompat:no -dynamicbase:no manhunt.exe
echo Verifying if manhunt.exe is installed correctly...
certutil -hashfile manhunt.exe SHA256
echo f1a992475182358e487eb89a27eceec194aeb74b7ed05525835d07306be6c13f  --  IF BOTH OUTPUTS HAVE THE SAME CHECKSUM THAT MEANS MANHUNT HAS BEEN PATCHED. IF CHECKSUM IS DIFFERENT, MANHUNT MAY NOT BE PATCHED CORRECTLY.
pause
start MEP2.bat
exit