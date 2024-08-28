#/bin/bash
wallpaper=`find ~/Wallpapers/ -type f | shuf -n 1`
# swww img $wallpaper --transition-type center --transition-fps 1 --transition-steps 1

swww img $wallpaper --transition-type random 

sleep 2

wal -i $wallpaper

