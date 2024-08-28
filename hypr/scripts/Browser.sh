#!/bin/sh
choice=$(rofi -dmenu | cut -d. -f1)
xdg-open "https://ya.ru/search/?text=${choice}"

