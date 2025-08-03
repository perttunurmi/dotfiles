#!/usr/bin/env bash

picom --backend xrender --vsync --daemon
nm-applet &
redshift-gtk -t 6500:1500 &
blueman-applet &
flameshot &
copyq &
