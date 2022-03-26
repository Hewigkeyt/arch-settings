#!/usr/bin/bash

set -x

file="/sys/devices/platform/sony-laptop/kbd_backlight"
current=$(cat $file)
if [ "$current" == "1" ]
	then echo 0 > $file
else
	echo 1 > $file
fi

