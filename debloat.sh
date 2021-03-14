#!/bin/bash

adb kill-server
sudo adb start-server

echo 'INSTALLING APPS 1/2'
sudo adb install vanced.apk

echo 'INSTALLING APPS 2/2'
sudo adb install camera.apk

echo 'DEBLOATING GOOGLE'
sudo adb shell pm uninstall -k --user 0 com.google.android.youtube
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.maps
sudo adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
sudo adb shell pm uninstall -k --user 0 com.google.android.gm
sudo adb shell pm uninstall -k --user 0 com.google.android.videos
sudo adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
sudo adb shell pm uninstall -k --user 0 com.google.android.tts
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
sudo adb shell pm uninstall -k --user 0 com.google.android.setupwizard
sudo adb shell pm uninstall -k --user 0 com.google.android.calculator
sudo adb shell pm uninstall -k --user 0 com.google.android.calendar
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.docs
sudo adb shell pm uninstall -k --user 0 com.google.android.feedback
sudo adb shell pm uninstall -k --user 0 com.google.android.deskclock
sudo adb shell pm uninstall -k --user 0 com.google.android.dialer
sudo adb shell pm uninstall -k --user 0 com.google.android.contacts
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.messaging
sudo adb shell pm uninstall -k --user 0 com.google.android.apps.photos
sudo adb shell pm uninstall -k --user 0 com.android.chrome
sudo adb shell pm uninstall -k --user 0 com.google.android.as

echo 'INSTALLING REPLACEMENTS'
sudo adb install browser.apk
sudo adb install dialer.apk
sudo adb install sms.apk
sudo adb install contacts.apk
sudo adb install clock.apk
sudo adb install calendar.apk
sudo adb install calculator.apk
sudo adb install gallery.apk

echo 'REMOVING QUALCOMM BLOAT'
sudo adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.telemetry
sudo adb shell pm uninstall -k --user 0 com.qualcomm.location
sudo adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.connectionsecurity
sudo adb shell pm uninstall -k --user 0 com.qualcomm.atfwd
sudo adb shell pm uninstall -k --user 0 com.qualcomm.embms
sudo adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.trustzoneaccess
sudo adb shell pm uninstall -k --user 0 com.qualcomm.qti.optinoverlay

echo 'REMOVING FAIRPHONE APPS'
sudo adb shell pm uninstall -k --user 0 com.fairphone.myfairphone
sudo adb shell pm uninstall -k --user 0 android.autoinstalls.config.vodafone.fairphone3
sudo adb shell pm uninstall -k --user 0 com.android.fpcamera3
sudo adb shell pm uninstall -k --user 0 com.android.stk
sudo adb shell pm uninstall -k --user 0 com.orange.update
sudo adb shell pm uninstall -k --user 0 com.orange.aura.oobe

