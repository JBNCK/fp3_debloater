# fp3_debloater
Debloater for the alredy minimal FairphoneOS running on the Fairphone 3.
# Notice
This script installs/replaces various apps on your Fairphone. By running this script you acceps the licenses of those apps. The apps are selected by me and are either open source or contain no/less trackers (checked with exodus). The license of the actual debloater file is GPL v3.
# Requirements and instructions (READ CAREFULLY!)
Fist you'll need USB debugging enabled on your phone. To do that, we also must have developer options enabled. To do that, go into 'settings >> about phone' and tap the build number 7 times (It may ask you for your pin code/pattern). Congrats! Now when you go back to settings, you'll see developer options under the 'system' category. In the developer options, scroll down a bit and enable 'USB debugging' (might also be called 'Android debugging'). Now if you run the script, it'll show a confirmation prompt. Confirm when it pops up (It might even show up directly after you enable USB/Android debugging). 


To run the script on Linux, see 'Running the script (Linux/Unix/MacOS!)' below. 

To run the script on Linux you'll also need:

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

To run the script under MacOS you'll also need the platform tools:

Additional steps for MacOS:
```
MacOS:
download 'Platform tools' from the Android Developers website (linked above) and but the files in the extracted folder before you run the script.
```

Link to the Android Developers website:

Platform tools (Windows/MacOS): https://developer.android.com/studio/releases/platform-tools
# Running the script (Linux/Unix/MacOS)

Running the script (Linux/Unix/MacOS):
Extract the release file and open a terminal inside of the extracted folder. Then type in these commands:
```
sudo chmod 777 *
./debloat.sh (or './debloat_mac.sh' without the quotes on MacOS)
```
The script will take around 1-2 minutes to debloat your phone. To complete the process, reboot your phone.
# Running the script (Windows)
double click the ```debloat_win.bat``` file. The debloat process should start automatically. The script will take around 1-2 minutes to debloat your phone. To complete the process, reboot your phone.
# Post-running
Make sure to configure OpenBoard via the app or you'll have no keyboard. OpenBoard is an open source keyboard app and a replacement for GBoard. The app itself guides you thru the configuration.


Also make sure to set Lawnchair as your default home screen. Go to Lawnchair settings and change the search engine in the search options to 'App search'. Also feel free to hide the OpenBoard and 'Simple Thank You icons' from the home screen by long pressing them in the app drawer and selecting 'Customize > Hide app'.


As you noticed the script also installs the 'Simple Thank You' app which unlocks theming for the Dialer app (I had to replace the LineageOS dialer with this one as crashes got reported) in the case you don't like the default grey theme (it looks kinda ugly to be honest lol).

# Getting apps back
There is currently no rebloater. but if you want to get a package/app back, just find out the package name (via the debloater, package names viewer 2.0 (play store) or whatever) and type in (terminal):
```
adb shell pm install-existing [PACKAGE NAME]
```
replace [PACKAGE NAME] with the actual name of the package.
