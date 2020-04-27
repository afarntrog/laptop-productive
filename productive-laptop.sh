#!/bin/bash
# This script runs in background and has listener for when laptop locks or unlocks.
# It is being used here, to call child script that'll prompt user to enter reason for opening up laptop
# All results will be logged.


dbus-monitor --session "type='signal',interface='org.gnome.ScreenSaver'" | \
( while true
    do read X
    if echo $X | grep "boolean true" &> /dev/null; then
        echo "locking at $(date)" >> $HOME/time_xprofile
    elif echo $X | grep "boolean false" &> /dev/null; then
        echo "unlocking at $(date)" >> $HOME/time_xprofile
	# Calls this script that prompts me on unlock
	gnome-terminal -- $HOME/Desktop/input_getter.sh
		
    fi
    done )
