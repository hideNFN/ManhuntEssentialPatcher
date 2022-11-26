# Manhunt Essential Patcher - by hideNFN

## A simple patch that makes Manhunt run on modern systems.

This is basically a .bat file that renames testapp.exe as manhunt.exe and makes a backup of the original, it renames the two audio files that glitch out and repeat so they don't play and, with the use of a script used by Visual Studio (link.exe), it modifies two flags for manhunt.exe. It's as simple as that, which begs the question further more, why hasn't Rockstar done this already?

Tested this on a copy from Steam, so far it works great. However, I definitely recommend locking the FPS with software that supports DirectX 8, for example: RivaTuner Statistics Server, which I use and it comes bundled with MSI Afterburner.


Used the hostx86/x86 version of link.exe (MSVC Linker which was bundled with Visual Studio Community 2022)