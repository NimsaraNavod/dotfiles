setxkbmap -option caps:escape &
# see https://unix.stackexchange.com/a/295652/332452
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

# see https://wiki.archlinux.org/title/GNOME/Keyring#xinitrc
eval $(/usr/bin/gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

# see https://github.com/NixOS/nixpkgs/issues/14966#issuecomment-520083836
mkdir -p "$HOME"/.local/share/keyrings
polybar sleek &
wal -i "$(shuf -en1 ~/media/images/wallpapers/*)" &
picom --config ~/.config/picom/picom.conf &
/usr/bin/dunst &
sxhkd &
exec bspwm
