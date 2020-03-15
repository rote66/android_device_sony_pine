# Device configuration for Sony XPERIA L1 (7.x,3.18.35+,64bit)
========================================

Basic   | Spec Sheet
-------:|:-------------------------
Announced | 2017, Mar
CPU     | Quad-core 1.45 GHz Cortex-A53
CHIPSET | Mediatek MT6737T
GPU     | Mali-T720MP2
Memory  | 2GB RAM
Board   | pine
Shipped Android Versions | 7.0
Storage | 16 GB
Battery | 2620 mAh (non-removable)
Dimensions | 151 x 74 x 8.7 mm
Display | 5.5" IPS LCD 720 x 1280 px
Camera  | 13 MP, f/2.2, autofocus

![Sony XPERIA L1](https://fdn2.gsmarena.com/vv/pics/sony/sony-xperia-l1-0.jpg)

===========================

Getting Started
---------------

Initialize a repository with Los14.1:

    repo init -u git://github.com/lineageos/android.git -b cm-14.1
    
Sync sources:    

    repo sync
    
Clone this device:
    
    git clone https://github.com/rote66/android_device_sony_pine.git -b los-14.1 device/sony/pine
    
Patch the sources:

    cd device/sony/pine/patches
    ./apply-patches.sh
    cd ../../../../

Build the code:

    build/envsetup.sh
    brunch lineage_pine-userdebug

===========================

# Build Information

### Current Working
 * Hardware acceleration
 * Wifi
 * Bluetooth
 * Vibration
 * Audio
 * Flashlight (statusbar and camera)
 * Micro SD support
 * MTP modes
 * RAM and ROM
 * Rotation
 * Camera rear/front (photographs only)
 * Auto brightness
 * Adjustable brightness
 * GPS
 * Video Recorder
 * Poweroff Chager
 * NFC 
 * Hotspot

 ## Broken/Bugs
 * VideoRecorder need 3rd camera (fooj
 * RIL (insert sim will unknow baseband)
 * MTK Decodec

### Credits:
  - KJONES
  - BILUX
  - R0RTIZ2
  - PAUL (SODP)
  - jmpfbmx
  - rote66

  
## Credits (some files from their sources):
  - divis1969
  - seluce
  - DeckerSU
  - mohancm
  - darklord4822
  - MT8163
  - Moyster
  - SonyCustoms (tuba dev)
  
And about everyone else in the Mediatek community ;)  

