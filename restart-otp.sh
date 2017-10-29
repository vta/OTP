#!/bin/bash
#
# Restart OTP Grizzly server on port 8888
MAILTO=""
sudo killall java
sleep 7
java -Xmx6G -Xverify:none -jar /srv/vta.amigocloud.com/OTP/target/otp-1.0.0-shaded.jar --basePath /srv/vta.amigocloud.com/data/ --router default --server --port 8888 --cache /srv/vta.amigocloud.com/ned --autoReload --autoScan | tee /home/ubuntu/logs/grizzly-`date +%F`.log &
res=$?
if test "$res" = "0" ; then
    echo "Restart successful and logging to `pwd`/logs/grizzy-`date +%F`.log"
else
    echo "Restart failed with exit code: $res"
fi
exit
