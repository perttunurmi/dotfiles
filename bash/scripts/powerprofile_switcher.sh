#!/usr/bin/env bash

printf "performance\nbalanced\npower-saver" | rofi -dmenu | xargs powerprofilesctl set
