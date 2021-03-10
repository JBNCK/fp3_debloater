# fp3_debloater
Debloater for the alredy minimal FairphoneOS running on the Fairphone 3.
# Notice
This script installs/replaces various apps on your Fairphone. By running this script you acceps the licenses of those apps. The apps are selected by me and are either open source or contain no/less trackers (checked with exodus). The license of the actual debloater file is GPL v3.
# Running the script
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
