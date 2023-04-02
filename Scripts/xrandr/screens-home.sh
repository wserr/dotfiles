#! /bin/bash

xrandr --output DP-1 --auto --right-of eDP-1 --rotate inverted
xrandr --output DP-3 --auto --right-of DP-1 --rotate right

betterlockscreen -u ~/Wallpapers/mandelbrot_full_pink.png

nitrogen --set-auto ~/Wallpapers/landscape.png --head=0 
nitrogen --set-auto ~/Wallpapers/landscape.png --head=1 
nitrogen --set-zoom-fill ~/Wallpapers/wavy_lines.png --head=2 

