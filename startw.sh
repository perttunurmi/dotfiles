#!/bin/sh
# Purpose: Set environmental variables when starting a wayland session
# Author : Daniel Wayne Armstrong <hello@dwarmstrong.org>

export ANKI_WAYLAND=1
export QT_QPA_PLATFORM=wayland

# start sway
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
sway -c ~/.config/sway/config

