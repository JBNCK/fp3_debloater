#!/usr/bin/env python3
import os
from os import system, name

adb_command = ""

if name == "nt":
    adb_command = "adb.exe "
else:
    adb_command = "./adb "

def clear_screen():
    if name == "nt":
        os.system("cls")
    else:
        os.system("clear")

clear_screen()
os.system(adb_command + "kill-server")
os.system(adb_command + "start-server")
clear_screen()

def remove_google():
    print("Removing Google bloat/spyware...")
    os.system(adb_command + "shell pm uninstall --user 0 com.android.vending")
    os.system(adb_command + "shell pm uninstall --user 0 com.android.chrome")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.maps")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.tachyon")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.tts")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.gms.location.history")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.setupwizard")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.turbo")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.restore")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.gm")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.youtube")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.docs")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.videos")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.photos")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.youtube.music")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.projection.gearhead")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.apps.wellbeing")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.marvin.talkback")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.overlay.searchlauncherconfig")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.syncadapters.calendar")
    os.system(adb_command + "shell pm uninstall --user 0 com.google.android.syncadapters.contacts")
    os.system(adb_command + "install aurorastore.apk")
    clear_screen()

def remove_qualcomm():
    print("Removing Qualcomm bloat/spyware...")
    os.system(adb_command + "shell pm uninstall --user 0 com.qualcomm.qti.qms.service.telemetry")
    os.system(adb_command + "shell pm uninstall --user 0 com.qualcomm.location")
    os.system(adb_command + "shell pm uninstall --user 0 com.qualcomm.qti.optinoverlay")
    clear_screen()

def remove_country_specific():
    print("Removing country specific bloat/spyware...")
    os.system(adb_command + "shell pm uninstall --user 0 android.autoinstalls.config.vodafone.fairphone3")
    os.system(adb_command + "shell pm uninstall --user 0 com.orange.update")
    os.system(adb_command + "shell pm uninstall --user 0 com.orange.aura.oobe")
    clear_screen()

def remove_other_android_bloat():
    print("Removing other Android bloat/spyware...")
    os.system(adb_command + "shell pm uninstall --user 0 com.android.stk")
    os.system(adb_command + "shell pm uninstall --user 0 com.android.stk2")
    os.system(adb_command + "shell pm uninstall --user 0 com.android.egg")
    os.system(adb_command + "shell pm uninstall --user 0 com.fairphone.myfairphone")
    clear_screen()

def enable_pie_theme():
    print("Enabling PIE theme...")
    os.system(adb_command + "shell cmd overlay enable com.android.theme.icon_pack.filled.android")
    os.system(adb_command + "shell cmd overlay enable com.android.theme.icon_pack.filled.launcher")
    os.system(adb_command + "shell cmd overlay enable com.android.theme.icon_pack.filled.settings")
    os.system(adb_command + "shell cmd overlay enable com.android.theme.icon_pack.filled.systemui")
    clear_screen()

def install_apps():
    print("Installing apps...")
    os.system(adb_command + "install f-droid.apk")
    clear_screen()

wants_remove_google = input("Do you want to remove google bloat (yes/no)?: ")
wants_remove_qualcomm = input("Do you want to remove qualcomm bloat (yes/no)?: ")
wants_remove_country_specific = input("Do you want to remove country specific bloat (yes/no)?: ")
wants_remove_other_android_bloat = input("Do you want to remove other android bloat (yes/no)?: ")
wants_enable_pie_theme = input("Do you want to enable the Android 10 SystemUI theme? (yes/no)): ")

if wants_remove_google == "yes" or wants_remove_google == "Yes" or wants_remove_google == "y" or wants_remove_google == "Y":
    remove_google()
if wants_remove_country_specific == "yes" or wants_remove_country_specific == "Yes" or wants_remove_country_specific == "y" or wants_remove_country_specific == "Y":
    remove_country_specific()
if wants_remove_qualcomm == "yes" or wants_remove_qualcomm == "Yes" or wants_remove_qualcomm == "y" or wants_remove_qualcomm == "Y":
    remove_qualcomm()
if wants_remove_other_android_bloat == "yes" or wants_remove_other_android_bloat == "Yes" or wants_remove_other_android_bloat == "y" or wants_remove_other_android_bloat == "Y":
    remove_other_android_bloat()
if wants_enable_pie_theme == "yes" or wants_enable_pie_theme == "Yes" or wants_enable_pie_theme == "y" or wants_enable_pie_theme == "Y":
    enable_pie_theme()

install_apps()
input("Process finished.")
