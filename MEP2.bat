@echo off
title Manhunt Essential Patcher @ https://github.com/hideNFN/ManhuntEssentialPatcher
cd "audio\PC\SCRIPTED\CRAPPER" 
rename CRAPPER.RIB CR4PPER.RIB
cd ..
cd PORN
rename PORN.RIB P0RN.RIB
cd ..
cd GASPOUR
rename GASPOUR.RIB GASP0UR.RIB
cd ..
cd TRAIN
rename TRAIN1.RIB TR4IN1.RIB
C:
set mhsavepath="%userprofile%\Documents\Manhunt User Files"
set mhsavegames="%userprofile%\Documents\Manhunt User Files\SaveGames"
if exist %mhsavegames% echo Making a backup of your Manhunt saves... & cd %mhsavepath% & mkdir BACKUP & copy SaveGames BACKUP
if not exist %mhsavegames% echo Couldn't find Manhunt saves, skipping the saves folder backup...
echo Manhunt Essential Patcher script ran successfully.
pause
exit