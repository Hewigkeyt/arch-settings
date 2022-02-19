#!/usr/bin/bash

set -x

file="/sys/devices/platform/sony-laptop/kbd_backlight"
current=$(cat $file)
if [ "$current" == "0" ]
	then echo 1 > $file
elif [ "$current" == "1" ]
	then echo 0 > $file
fi

