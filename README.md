# Manhunt Essential Patcher


## A simple patch that makes Manhunt run on modern systems.


### Instructions
Place all of the files from the latest release into a fresh Manhunt install directory and just run "ManhuntEssentialPatcher.bat".

Besides this fix, I definitely recommend locking the FPS to 60 with software that supports DirectX 8, for example: [RivaTuner Statistics Server](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html), which I use and it also comes bundled when installing MSI Afterburner.

### Audio Bugs
 1. Some effects cut off and replay for seemingly no reason, these occurences are pretty rare and hard to notice however, main menu music also replays but only if you're alt-tabbed.
 2. Press Coverage (Scene #15) - Cash's last line repeats infinitely after getting to the apartment, luckily, there's a save point right after that, all you have to do is get it, open the menu, save and load the save, the bug should disappear. (This sound loop wasn't disabled since it's important towards the cutscene and you can get rid of it easily)
 3. Deliverance (Scene #20) - A slow motion "Carcer City News" sound repeats a few times throughout the last cutscene.
 4. Credits - There are two music tracks and the last seconds of each song keeps repeating for a few seconds, the fix (which I don't include in the patch because it would ruin the credits by making them all silent) is to rename "FE_S.RIB" to something else while keeping the ".RIB" in the "audio\PC\MUSIC\FRONTEND" folder.

### Compatibility
| **Versions** |  |
|---|---|
| Steam version | ✅ |
| Retail version | ⚠️ |
| Cracked versions | ⚠️ |

> This fix has only been tested on the official Steam version so far, those who own the retail version or have cracked the game may not see the same results.


### Patch check
The script also checks if the newly modified manhunt.exe's SHA256 checksum matches the one that was patched and tested by me, but you can also manually verify the checksum with these commands after switching to manhunt's directory in the terminal:

**PowerShell**
`Get-FileHash manhunt.exe`

**Command Prompt**
`certutil -hashfile manhunt.exe SHA256`

| **SHA256 Checksum** |
|---|
| f1a992475182358e487eb89a27eceec194aeb74b7ed05525835d07306be6c13f |

### How it works
This is basically a .bat file that renames "testapp.exe" as "manhunt.exe" ("testapp.exe" is the original retail executable that doesn't have the issues present in the steam release manhunt.exe), it makes a backup of the original files in another folder called "BACKUP", it makes a backup of the game saves, if there are any, it also renames four audio files that glitch out and repeat so that they don't play anymore (The sound of the guy on the toilet, the german porn, the sound of gasoline being poured into a tank and a train sound which are "CRAPPER.RIB", "PORN.RIB", "GASPOUR.RIB" and "TRAIN1.RIB" respectively).

It also uses a script found within Visual Studio (MSVC's Linker aka link.exe) to edit the replaced manhunt.exe and it modifies two flags for it (basically disabling [nxcompat](https://learn.microsoft.com/en-us/cpp/build/reference/nxcompat-compatible-with-data-execution-prevention) and [dynamicbase](https://learn.microsoft.com/en-us/cpp/build/reference/dynamicbase-use-address-space-layout-randomization) for the executable ONLY, "nxcompat" is connected to Data Execution Prevention (DEP) and it shouldn't be disabled globally.


Used the hostx86/x86 version of link.exe (MSVC Linker which was bundled with Visual Studio Community 2022).

Patching method is adapted from the GitHub repositories of fkortsagin's [Manhunt-fix-Windows-10](https://github.com/fkortsagin/Manhunt-fix-Windows-10) and ermaccer's [Manhunt.Fixer](https://github.com/ermaccer/Manhunt.Fixer).
