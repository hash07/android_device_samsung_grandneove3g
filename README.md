##Device configuration for Samsung Galaxy Grand Neo Plus GT-I9060I (grandneove3g)

=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.2GHz Cortex-A7
CHIPSET | Spreadtrum SC7730S sc8830
GPU     | Mali-400MP2
Memory  | 1 GB
Shipped Android Version | Android 4.4.4 with TouchWiz Essence
Storage | 8 GB
MicroSD | Up to 64 GB
Battery | 2100 mAh Li-Ion (removable)
Dimensions | 77.1 x 143.7 x 9.5 mm
Display | 480 x 800 pixels, 5.0"
Rear Camera  | 5.0 MP, LED flash
Front Camera | 2.0 MP

## Patches

* [external/tinyalsa](https://github.com/CyanogenMod/android_external_tinyalsa/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [frameworks/av](https://github.com/CyanogenMod/android_frameworks_av/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [frameworks/base](https://github.com/CyanogenMod/android_frameworks_base/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [frameworks/opt/telephony](https://github.com/CyanogenMod/android_frameworks_opt_telephony/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [hardware/libhardware](https://github.com/CyanogenMod/android_hardware_libhardware/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [system/core](https://github.com/CyanogenMod/android_system_core/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [system/media](https://github.com/CyanogenMod/android_system_media/compare/cm-13.0...ngoquang2708:cm-13.0.patch)
* [build](https://github.com/CyanogenMod/android_build/compare/cm-13.0...ngoquang2708:cm-13.0.patch)

### How to apply
To apply patches 
for example:  audio.patch
 got to frameworks/av  copy the patch in that directory and open 
terminal and run command 
where 1st command is to apply patch and 
the 2nd for to revert the patches which applied earlier

		patch -p1 < audio.patch
		patch -R -p1 <audio.patch
