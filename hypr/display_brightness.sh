#!/bin/zsh
maximum_brightness=`cat /sys/class/backlight/amdgpu_bl1/max_brightness`
factor=$(($maximum_brightness / 100.0))
current_brightness=`cat /sys/class/backlight/amdgpu_bl1/brightness`
current_brightness=$(($current_brightness / $factor))
integer current_brightness=$current_brightness
echo $current_brightness
