#!/bin/sh
./adb kill-server
./adb start-server

echo 'INSTALLING APPS 1/2'
./adb install vanced.apk

echo 'INSTALLING APPS 2/2'
./adb install camera.apk

echo 'DEBLOATING GOOGLE'
./adb shell pm uninstall -k --user 0 com.google.android.youtube
./adb shell pm uninstall -k --user 0 com.google.android.apps.maps
./adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead
./adb shell pm uninstall -k --user 0 com.google.android.apps.tachyon
./adb shell pm uninstall -k --user 0 com.google.android.gm
./adb shell pm uninstall -k --user 0 com.google.android.videos
./adb shell pm uninstall -k --user 0 com.google.android.gms.location.history
./adb shell pm uninstall -k --user 0 com.google.android.tts
./adb shell pm uninstall -k --user 0 com.google.android.apps.wellbeing
./adb shell pm uninstall -k --user 0 com.google.android.apps.youtube.music
./adb shell pm uninstall -k --user 0 com.google.android.setupwizard
./adb shell pm uninstall -k --user 0 com.google.android.calculator
./adb shell pm uninstall -k --user 0 com.google.android.calendar
./adb shell pm uninstall -k --user 0 com.google.android.apps.docs
./adb shell pm uninstall -k --user 0 com.google.android.feedback
./adb shell pm uninstall -k --user 0 com.google.android.deskclock
./adb shell pm uninstall -k --user 0 com.google.android.dialer
./adb shell pm uninstall -k --user 0 com.google.android.contacts
./adb shell pm uninstall -k --user 0 com.google.android.apps.messaging
./adb shell pm uninstall -k --user 0 com.google.android.apps.photos
./adb shell pm uninstall -k --user 0 com.android.chrome
./adb shell pm uninstall -k --user 0 com.google.android.as
./adb shell pm uninstall -k --user 0 com.google.android.inputmethod.latin
./adb shell pm uninstall -k --user 0 com.google.android.googlequicksearchbox

echo 'INSTALLING REPLACEMENTS'
./adb install browser.apk
./adb install dialer.apk
./adb install sms.apk
./adb install contacts.apk
./adb install clock.apk
./adb install calendar.apk
./adb install calculator.apk
./adb install gallery.apk
./adb install keyboard.apk
./adb install launcher.spk
./adb install sty.apk

echo 'REMOVING QUALCOMM BLOAT'
./adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.telemetry
./adb shell pm uninstall -k --user 0 com.qualcomm.location
./adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.connectionsecurity
./adb shell pm uninstall -k --user 0 com.qualcomm.atfwd
./adb shell pm uninstall -k --user 0 com.qualcomm.embms
./adb shell pm uninstall -k --user 0 com.qualcomm.qti.qms.service.trustzoneaccess
./adb shell pm uninstall -k --user 0 com.qualcomm.qti.optinoverlay

echo 'REMOVING FAIRPHONE APPS'
./adb shell pm uninstall -k --user 0 com.fairphone.myfairphone
./adb shell pm uninstall -k --user 0 android.autoinstalls.config.vodafone.fairphone3
./adb shell pm uninstall -k --user 0 com.android.fpcamera3
./adb shell pm uninstall -k --user 0 com.android.stk
./adb shell pm uninstall -k --user 0 com.orange.update
./adb shell pm uninstall -k --user 0 com.orange.aura.oobe

