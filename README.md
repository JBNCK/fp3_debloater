# Fairphone 3 debloater (BETA)
******
Notice:

The script is still unfinished. This is the beta version. Please keep that in mind when using the script. If you encounter an issue, please open an issue on GitHub or in the forum.
******
Debloat script for the Fairphone 3 and Fairphone 3 Plus. The script doesn't require root access or an unlocked bootloader. The script will ask yes or no question on what to (not) remove. Answer with "yes", "Yes", "y" or "Y" or ENTER enter for "no".
# Requirements
- Python3
- Windows or Linux
- USB debugging enabled

For instructions on how to enable USB debigging follow this guide by /e/ until "To unlock OEM": https://doc.e.foundation/pages/enable-usb-debugging
# Using the script on Windows
First make sure you have Python 3 installed with it integrated in the $PATH variable. Then clone the repository (for a development version) or download the latest release (for the stable version) and extract the archive. Copy/Memorize the path of the extracted folder, open command prompt and run (replace the path with what you copied/memorized):
```
cd C:\Path\To\Extracted\Folder\
```
...to navigate to the extracted folder. To execute the script run:
```
python debloater.py
```
# Using the script on Linux
First make sure you have Python 3 installed. Then clone the repository (for a development version) or download the latest release (for the stable version) and extract the archive. Copy/Memorize the path of the extracted folder, open a terminal and run (replace the path with what you copied/memorized):
```
cd /path/to/extracted/folder
```
...to navigate to the extracted folder. To execute the script run:
```
python3 debloater.py
```
# Using the script on MacOS
First make sure you have Python 3 installed. Then clone the repository (for a development version) or download the latest release (for the stable version) and extract the archive. Open the terminal, type in "cd " (with a space) and then drag the extracted folder in the terminal window and press enter. The command should look something like this:
```
cd /path/to/extracted/folder
```
After that run this to naviagate to the MacOS version:
```
cd MacOS
```
To execute the script run:
```
python3 debloater.py
```
# Getting apps back
Most apps can be reinstalled via the Play Store (or the AuroraStore if you chose the "remove Google bloat/spyware" option). If it's a system package, please make a comment on the Fairphone Community Forum post and I will show you how to get it back.
# How can I undo the process?
Factory reset.
