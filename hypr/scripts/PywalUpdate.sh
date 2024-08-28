cache="$HOME/.cache/swww/HDMI-A-1"
wallpaper=$(cat "$cache")
cp $wallpaper ~/.config/rofi/image
wal -i $wallpaper
bash "$HOME/.config/hypr/scripts/themecord.sh"

pkill swaync
sleep 0.2
swaync
