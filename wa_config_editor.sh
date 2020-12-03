#!/usr/bin/bash

file=/data/data/com.whatsapp/shared_prefs/com.whatsapp_preferences.xml

sed -i 's/1080/100000/g;' $file
sed -i 's/5000/10000/g;' $file
sed -i 's/1280/100000/g;' $file
sed -i 's/1024/100000/g;' $file
sed -i 's/image_processing_enabled"\ value="true"/image_processing_enabled"\ value="false"/g;' $file
sed -i 's/55/100/g;' $file
sed -i 's/80/100/g;' $file
sed -i 's/1600/100000/g;' $file
am force-stop com.whatsapp
