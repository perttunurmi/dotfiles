#!/bin/bash

a=$((5 * 60))

sleep $a;
notify-send "Time's up! It lasted 45min"
mpv --volume=100 ~/media/music/level-up-2-199574.mp3
