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

# Environment Variables
# Input Method
export GTK_IM_MODULE=kime
export QT_IM_MODULE=kime
export XMODIFIERS=@im=kime

export EDITOR=nvim

# XDG Specifications
export XDG_CURRENT_DESKTOP=i3
export XDG_SESSION_DESKTOP=i3
export XDG_SESSION_TYPE=x11

# QT Variables
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct


