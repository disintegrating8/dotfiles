#!/bin/sh

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config ~/.config/picom/picom.conf --vsync &

~/.config/polybar/launch.sh &

#bg
#nitrogen --restore &
~/.fehbg &
clipmenud &
ssh-add &
dunst &

[ ! -s ~/.config/mpd/pid ] && mpd &
/usr/libexec/polkit-gnome-authentication-agent-1 &

sxhkd -c $HOME/.config/i3/sxhkdrc &
