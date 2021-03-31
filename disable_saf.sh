#!/bin/sh

array=($(ls /data/data | grep -v "com.termux"))
for i in "${array[@]}"
do
  echo "Disabling SAF for $i"
  cmd appops set $i android:legacy_storage allow &&
    am force-stop $i
  echo "Force stopped $i"
  echo $i
done
