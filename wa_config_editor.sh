# priority assessment for dalvik ART overrides
am force-stop com.whatsapp

sleep 1
rand=`echo $RANDOM | md5sum | head -c 6`
file=/data/data/com.whatsapp/shared_prefs/server_prop_preferences.xml

# string ed for major confs (particulars to be edited manually on preference)
sed -i 's/1080/100000/g;' $file
sed -i 's/5000/10000/g;' $file
sed -i 's/1280/100000/g;' $file
sed -i 's/1024/100000/g;' $file
sed -i 's/image_processing_enabled"\ value="true"/image_processing_enabled"\ value="false"/g;' $file
sed -i 's/abprops_rollback_enabled"\ value="true"/abprops_rollback_enabled"\ value="false"/g;' $file
sed -i 's/server_props:one_time_unlocked"\ value="false"/server_props:one_time_unlocked"\ value="true"/g;' $file
sed -i 's/rollback_usage_enabled"\ value="true"/rollback_usage_enabled"\ value="false"/g;' $file
sed -i 's/props:refresh"\ value="86400000"/props:refresh"\ value="99999999"/g;' $file
sed -i 's/index_included"\ value="true"/index_included"\ value="false"/g;' $file

sed -i 's/360/10000/g;' $file
sed -i 's/55/100/g;' $file
sed -i 's/80/100/g;' $file
sed -i 's/75/100/g;' $file
sed -i 's/1600/100000/g;' $file
sed -i 's/16/1000/g;' $file
sed -i 's/100/1000/g;' $file
sed -i 's/32/1000/g;' $file

