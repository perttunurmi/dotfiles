#!/usr/bin/env bash


# readarray -d '' layout_scripts < <(find "$HOME/.screenlayout/" -type f -print0)
#
# for i in "${layout_scripts[@]}"
# do
#   echo "$i"
# done


find "$HOME/.screenlayout/" -type f | rofi -dmenu | xargs bash

