# fp3_debloater
Debloater for the alredy minimal FairphoneOS running on the Fairphone 3.
# Notice
This script installs/replaces various apps on your Fairphone. By running this script you acceps the licenses of those apps. The apps are selected by me and are either open source or contain no/less trackers (checked with exodus). The license of the actual debloater file is GPL v3.
# Requirements and instructions (READ CAREFULLY!)
Fist you'll need USB debugging enabled on your phone. To do that, we also must have developer options enabled. To do that, go into 'settings >> about phone' and tap the build number 7 times (It may ask you for your pin code/pattern). Congrats! Now when you go back to settings, you'll see developer options under the 'system' category. In the developer options, scroll down a bit and enable 'USB debugging' (might also be called 'Android debugging'). Now if you run the script, it'll show a confirmation prompt. Confirm when it pops up (It might even show up directly after you enable USB/Android debugging). 


To run the script on linux, see 'Running the script (Linux/Unix/MacOS!)' below. To run the scripts you also need:

-Android Debug Bridge (ADB). to install on Linux type in:
```
Ubuntu/Debian based:
sudo apt install adb

Arch:
sudo pacman -S adb

RHEL/Fedora:
sudo dnf install adb

Gentoo:
haha compile it for yourself or use another PC idk I use Arch

Others:
google it idk
```
Instructions for MacOS/Windows (If you are on MacOS also read 'Running the script (Linux/Unix/MacOS!)' below:
```
MacOS:
download 'Platform tools' from the android developers website and but the files in the extracted folder. In debloat.sh replace every 'sudo adb' with './adb' (without the quotes' and remove the #!/bin/bash. I am not sure how to run shell scripts though. I would assume it is the same way as listed below but if it doesnt work, google it.

Windows:
download 'Platform tools' from the android developers website and but the files in the extracted folder. Enable file extensions on the top of the file explorer by pressing 'View >> Enable file extensions' or something similar. Replace the .sh extension with a .bat extension. Inside the debloat.sh (now debloat.bat) file remove every 'sudo' and remove the #!/bin/bash. Run the script by double clicking.
```
Platform tools (Windows/MacOS): https://developer.android.com/studio/releases/platform-tools
# Running the script (Linux/Unix/MacOS!)
Extract the release file and open a terminal inside of the extracted folder. Then type in these commands:
```
sudo chmod 777 *
./debloat.sh
```
The script will take around 1-2 minutes to debloat your phone. To complete the process, reboot your phone.
# Getting apps back
There is currently no rebloater. but if you want to get a package/app back, just find out the package name (via the debloater, package names viewer 2.0 (play store) or whatever) and type in (terminal):
```
adb shell pm install-existing [PACKAGE NAME]
```
replace [PACKAGE NAME] with the actual name of the package.
