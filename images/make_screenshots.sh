#!/bin/bash

bspc node -g hidden
scrot "clean.png"
rofi -show drun &
sleep 1
scrot "rofi.png"
killall rofi
