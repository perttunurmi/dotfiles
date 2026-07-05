#!/usr/bin/env bash

battery() {
    if compgen -G "/sys/class/power_supply/BAT*" > /dev/null; then
        cat /sys/class/power_supply/BAT*/{status,capacity}
    fi
}
