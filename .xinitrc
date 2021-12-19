wal -i "$(shuf -en1 ~/media/images/wallpapers/*)" &
picom --config ~/.config/picom/picom.conf &
/usr/bin/dunst &
polybar sleek &
sxhkd &
exec bspwm
