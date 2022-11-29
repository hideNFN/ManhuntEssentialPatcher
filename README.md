# Manhunt Essential Patcher


## A simple patch that makes Manhunt run on modern systems.


### Instructions
Place all of the files from the latest release into a fresh Manhunt install directory and just run "ManhuntEssentialPatcher.bat".

Besides this fix, I definitely recommend locking the FPS to 60 with software that supports DirectX 8, for example: [RivaTuner Statistics Server](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html), which I use and it also comes bundled when installing MSI Afterburner.


### Compatibility
| **Versions** |  |
|---|---|
| Steam version | ✅ |
| Retail version | ⚠️ |
| Cracked versions | ⚠️ |

> This fix has only been tested on the official Steam version so far, those who own the retail version or have cracked the game may not see the same results.


### Patch check
The script also checks if the newly modified manhunt.exe's SHA256 checksum matches the one of one that was patched and also tested, but you can also manually verify the checksum with these commands after switching to manhunt's directory in the terminal:

**PowerShell**
`Get-FileHash manhunt.exe`

**Command Prompt**
`certutil -hashfile manhunt.exe SHA256`

| **SHA256 Checksum** |
|---|
| f1a992475182358e487eb89a27eceec194aeb74b7ed05525835d07306be6c13f |

### How it works
This is basically a .bat file that renames "testapp.exe" as "manhunt.exe" ("testapp.exe" is the original retail executable that doesn't have the issues present in the steam release manhunt.exe), it makes a backup of the original files in another folder called "BACKUP", it makes a backup of the game saves, if there are any, it also renames three audio files that glitch out and repeat so that they don't play anymore (The sound of the guy on the toilet, the german porn and the sound of gasoline being poured into a tank, which are "CRAPPER.RIB", "PORN.RIB" and "GASPOUR.RIB" respectively).

It also uses a script found within Visual Studio (MSVC's Linker aka link.exe) to edit the replaced manhunt.exe and it modifies two flags for it (basically disabling [nxcompat](https://learn.microsoft.com/en-us/cpp/build/reference/nxcompat-compatible-with-data-execution-prevention) and [dynamicbase](https://learn.microsoft.com/en-us/cpp/build/reference/dynamicbase-use-address-space-layout-randomization) for the executable ONLY, "nxcompat" is connected to Data Execution Prevention (DEP) and it shouldn't be disabled globally.


Used the hostx86/x86 version of link.exe (MSVC Linker which was bundled with Visual Studio Community 2022).

Patching method is adapted from the GitHub repositories of fkortsagin's [Manhunt-fix-Windows-10](https://github.com/fkortsagin/Manhunt-fix-Windows-10) and ermaccer's [Manhunt.Fixer](https://github.com/ermaccer/Manhunt.Fixer).