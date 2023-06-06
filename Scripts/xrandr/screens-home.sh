#! /bin/bash

xrandr --output DP-1 --auto --right-of eDP-1 --rotate inverted
xrandr --output DP-3 --auto --right-of DP-1 --rotate right

betterlockscreen -u ~/Wallpapers/moon.png

nitrogen --set-zoom-fill ~/Wallpapers/explorers_of_the_lake.png --head=0 
nitrogen --set-zoom-fill ~/Wallpapers/explorers_of_the_lake.png --head=1 
nitrogen --set-zoom-fill ~/Wallpapers/explorers_of_the_lake.png --head=2 

