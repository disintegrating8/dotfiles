#!/bin/sh

xrandr --output DP-4 --mode 2560x1440 --rate 240

# compositor
killall picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
picom --config ~/.config/picom/picom.conf --vsync &
flatpak run com.borgbase.Vorta &

~/.config/polybar/launch.sh &

#bg
#nitrogen --restore &
~/.fehbg &
clipmenud &
ssh-add &
dunst &
autotiling &

[ ! -s ~/.config/mpd/pid ] && mpd &
/usr/libexec/polkit-gnome-authentication-agent-1 &
#/usr/lib/polkit-kde-authentication-agent-1 &

#sxhkd
sxhkd -c $HOME/myrepo/i3/sxhkd/sxhkdrc &

# Environment Variables
# Input Method
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export EDITOR=nvim

# XDG Specifications
export XDG_CURRENT_DESKTOP=bspwm
export XDG_SESSION_DESKTOP=bspwm
export XDG_SESSION_TYPE=x11

# QT Variables
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct


