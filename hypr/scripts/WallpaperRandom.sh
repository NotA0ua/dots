#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for Random Wallpaper ( CTRL ALT W)

WALLDIR="$HOME/Wallpapers"
SCRIPTSDIR="$HOME/.config/hypr/scripts"

PICS=($(find ${WALLDIR} -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \)))
RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}


# Transition config
FPS=60
TYPE="random"
DURATION=1
BEZIER=".43,1.19,1,.4"
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION --transition-bezier $BEZIER"


swww query || swww-daemon --format xrgb && swww img ${RANDOMPICS} $SWWW_PARAMS

sleep 0.5

${SCRIPTSDIR}/PywalUpdate.sh
