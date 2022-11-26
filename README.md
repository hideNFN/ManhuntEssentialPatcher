# Manhunt Essential Patcher

## A simple patch that makes Manhunt run on modern systems.

### Instructions

Place all of the files from the latest release(ManhuntEssentialPatcher.bat, link.exe, tbbmalloc.dll) into the Manhunt install directory and just run ManhuntEssentialPatcher.bat

Besides this fix, I definitely recommend locking the FPS to 60 with software that supports DirectX 8, for example: [RivaTuner Statistics Server](https://www.guru3d.com/files-details/rtss-rivatuner-statistics-server-download.html), which I use and it also comes bundled with MSI Afterburner.

### How it works
This is basically a .bat file that renames "testapp.exe" as "manhunt.exe" and makes a backup of the original(which would be "manhunt.exe.old"), it renames the two audio files that glitch out and repeat so they don't play (The sound of the guy taking a shit and the german porn, which are "CRAPPER.RIB" and "PORN.RIB" respectively) and, with the use of a script used by Visual Studio ("link.exe"), it modifies two flags for the main .exe (basically disabling nxcompat and dynamicbase). It's as simple as that, which begs the question further more, why hasn't Rockstar done this already?

Used the hostx86/x86 version of link.exe (MSVC Linker which was bundled with Visual Studio Community 2022)

Patching method is adapted from fkortsagin's [Manhunt-fix-Windows-10](https://github.com/fkortsagin/Manhunt-fix-Windows-10) repo.