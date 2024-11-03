#!/bin/bash

POWERPROFILE=$(powerprofilesctl get)

if [ $POWERPROFILE = "performance" ]  ; then
	powerprofilesctl set power-saver
	echo 'power-saver'
	notify-send 'Powerprofile set to power-saver'
else if [ $POWERPROFILE = "power-saver" ] ; then
	powerprofilesctl set balanced
	echo 'balanced'
	notify-send 'Powerprofile set to balanced'
else 
	powerprofilesctl set performance
	echo 'performance'
	notify-send 'Powerprofile set to performance'
fi
fi
