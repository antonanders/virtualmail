#!/bin/bash
# call "postfix stop" when exiting
trap "{ echo Stopping enma; kill `pidof enma`; exit 0; }" EXIT

# start postfix
/usr/libexec/enma -c /etc/enma/enma.conf
# avoid exiting

sleep infinity   
