echo -n "250" > /sys/class/backlight/intel_backlight/brightness
[[ -f "$HOME/.xbindkeysrc" ]] && xbindkeys
exec i3
