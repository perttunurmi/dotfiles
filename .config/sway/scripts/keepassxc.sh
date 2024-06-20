#!/usr/bin/env sh
killall -q keepassxc
while pgrep -x waybar >/dev/null; do sleep 5; done
keepassxc
