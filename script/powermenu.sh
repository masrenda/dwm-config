#!/bin/bash

function powermenu {
        options="Cancel\nShutdown\nRestart\nSleep\nLock"
        selected=$(echo -e $options | dmenu)
        if [[ $selected = "Shutdown" ]]; then
                poweroff
        elif [[ $selected = "Restart" ]]; then
                reboot
        elif [[ $selected = "Sleep" ]]; then
                systemctl suspend
        elif [[ $selected = "Lock" ]]; then
                pkill -U rie
        elif [[ $selected = "Cancel" ]]; then
                return
        fi
}

powermenu
