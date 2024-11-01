#!/bin/bash

POWERPROFILE=$(powerprofilesctl get)

if [ $POWERPROFILE = "performance" ]  ; then
	powerprofilesctl set power-saver
	echo 'power-saver'
else if [ $POWERPROFILE = "power-saver" ] ; then
	powerprofilesctl set balanced
	echo 'balanced'
else 
	powerprofilesctl set performance
	echo 'performance'
fi
fi
