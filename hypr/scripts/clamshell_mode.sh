#!/bin/bash

if [[ "$1" == "open" ]]; then
    hyprctl keyword monitor "eDP-1, preferred, auto, 1"
else
    hyprctl keyword monitor "eDP-1, disable"
fi
