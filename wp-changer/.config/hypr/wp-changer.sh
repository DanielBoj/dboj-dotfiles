#!/bin/bash
while true; do 
    wallpaper=$(find -L ~/Pictures/wp/cycle_wp -type f | shuf -n 1) 
    hyprctl hyprpaper preload $wallpaper
    hyprctl hyprpaper wallpaper ,$wallpaper 
    sleep 21600 # 21600 segundos = 6 horas
done
