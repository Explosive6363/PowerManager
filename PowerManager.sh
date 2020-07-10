#!/bin/sh
#Fill in username and host to .bashrc

status=$(apcaccess status | grep STATUS)
status=${status##*:}

if [ ${status} = "ONBATT" ] ; then
	ssh $USER@$HOST "poweroff"
fi
